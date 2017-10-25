#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
	//ofSetLogLevel(OF_LOG_VERBOSE);
	ofSetLogLevel(OF_LOG_NOTICE);
	ofLogNotice() << "Starting Up...";

	//Inits
	faceFindElapsedTime = 0;

	//Cam Setup
	camWidth = 320;
	camHeight = 240;

	ofLogNotice() << "Cam Width: " << camWidth;
	ofLogNotice() << "Cam Height: " << camHeight;

	//Find webcam devices
	vector<ofVideoDevice> devices = vidGrabber.listDevices();

	for (int i = 0; i < devices.size(); i++) {
		if (devices[i].bAvailable) {
			//List it out to console
			ofLogNotice() << devices[i].id << ": " << devices[i].deviceName;
		}
		else {
			ofLogNotice() << devices[i].id << ": " << devices[i].deviceName << "[UNAVAILABLE]";
		}
	}

	char webcamId;
	ofLogNotice() << "Args Size: " << arguments.size() << endl;

	//Setup hardware from arguments
	if (arguments.size() > 1) {
		string arg = arguments.at(1);
		webcamId = (char)arg.at(0);
	}
	else {
		webcamId = '0';
	}
	
	if (arguments.size() > 2) {
		switchesCOM = arguments.at(2);
		ofLogNotice() << "Using switchesCOM: " << switchesCOM << endl;
	}
	else {
		switchesCOM = "COM10";
		ofLogNotice() << "Defaulting switchesCOM: " << switchesCOM << endl;
	}

	if (arguments.size() > 3) {
		ofLogNotice() << "Using lightsCOM: " << lightsCOM << endl;
		lightsCOM = arguments.at(3);
	}
	else {
		lightsCOM = "COM11";
		ofLogNotice() << "Defaulting lightsCOM: " << lightsCOM << endl;
	}

	switchesDevice.setup(switchesCOM, 57600);
	lightsDevice.setup(lightsCOM, 57600);

	int id = webcamId - '0';
	vidGrabber.setVerbose(false);
	vidGrabber.setDeviceID(id);
	vidGrabber.setDesiredFrameRate(60);
	vidGrabber.initGrabber(camWidth, camHeight);
	

	//Set up haar xml
	finder.setup("haarcascade_frontalface_default.xml");
	
	//Setup framerate
	ofSetFrameRate(60);

	//Wait for sync
	ofSetVerticalSync(true);

	//Load Images:
	//tikiMaskImage.load("TikiMask.png");
	//tikiMaskImage.rotate90(1);
	jasonMaskImage.load("JasonMask.png");
	jasonMaskImage.rotate90(1);
	zombieImage.load("Zombie.png");
	zombieImage.rotate90(1);
	frankensteinImage.load("Frankenstein.png");
	frankensteinImage.rotate90(1);
	wolfManImage.load("WolfMan.png");
	wolfManImage.rotate90(1);
}

//--------------------------------------------------------------
void ofApp::update(){
	ofBackground(0, 0, 0);
	vidGrabber.update();



	if (vidGrabber.isFrameNew()) {
		//Generate grayscale image from pixels
		ofPixels &pixels = vidGrabber.getPixels();
		cvColorImg.setFromPixels(pixels);

		//Convert to greyscale image
		cvGrayImg = cvColorImg;

		//Update every so often
		if ((ofGetElapsedTimeMillis() - faceFindElapsedTime) > FACE_FIND_DELAY) {
			finder.findHaarObjects(cvGrayImg);
			faceFindElapsedTime = ofGetElapsedTimeMillis();
		}

		
		if (finder.blobs.size() > 0) {
			ofRectangle cur;
			cur = finder.blobs[0].boundingRect;
			lastBlobWidth = cur.width;
			lastBlobHeight = cur.height;
			lastBlobX = cur.x;
			lastBlobY = cur.y;

			lastBlobCenterX = lastBlobX + (int)(lastBlobWidth / 2);
			lastBlobCenterY = lastBlobY + (int)(lastBlobHeight / 2);

			//Find location from webcam to full screen
			blobCenterXPercent = lastBlobCenterX / (double)camWidth;
			blobCenterYPercent = lastBlobCenterY / (double)camHeight;

			//Calc target image location
			overlayImageX = (int)((WINDOW_HEIGHT * (1 - blobCenterXPercent)) - overlayImageCenterOffsetY);
			overlayImageY = (int)((WINDOW_WIDTH * (1- blobCenterYPercent)) - overlayImageCenterOffsetX);

			//Counteract Camera offset
			overlayImageX += X_CAM_OFFSET;
			overlayImageY += Y_CAM_OFFSET;
		}

	}

	//Update Switch Colors
	if (switchesDevice.isInitialized()) {
		//R,G,B,Y,W (0 or 1)
		if ((ofGetElapsedTimeMillis() - serialWriteElapsedTime) > SERIAL_SEND_DELAY) {

			//update serial here

			unsigned char initByte = 255;
			unsigned char redByte = 0;
			unsigned char greenByte = 0;
			unsigned char blueByte = 0;
			unsigned char yellowByte = 0;
			unsigned char whiteByte = 0;

			unsigned char buf[6]{initByte,redByte,greenByte,blueByte,yellowByte,whiteByte};
			switchesDevice.writeBytes(&buf[0], 6);

			//reset timer
			serialWriteElapsedTime = ofGetElapsedTimeMillis();
		}

		//Read in from Arduino
		unsigned char inByte = 0;
		unsigned int numBytes = switchesDevice.available();

		for (int i = 0; i < numBytes; i++) {
			inByte = switchesDevice.readByte();

			if ((int)inByte == 255) {
				//ofLogNotice() << "Caught Init Byte" << endl;
				fillingCommand = true;
				numCommandBytes = 0;
			}
			else if (fillingCommand && numCommandBytes < 5) {
				commandBytes[numCommandBytes] = inByte;
				numCommandBytes++;
			}

			if (fillingCommand && numCommandBytes >= 5) {
				fillingCommand = false;

				//ofLogNotice() << "Command Full: ";
				//ofLogNotice() << (int)commandBytes[0] << " ";
				//ofLogNotice() << (int)commandBytes[1] << " ";
				//ofLogNotice() << (int)commandBytes[2] << " ";
				//ofLogNotice() << (int)commandBytes[3] << " ";
				//ofLogNotice() << (int)commandBytes[4] << endl;

				//Switch Images
				if ((int)commandBytes[0] == 1) {
					//ofLogNotice() << "Red Mask" << endl;
					currentImage = zombieImage;
					isNoImage = false;
				}
				else if ((int)commandBytes[1] == 1) {
					//ofLogNotice() << "Green Mask" << endl;
					currentImage = frankensteinImage;
					isNoImage = false;
				}
				else if ((int)commandBytes[2] == 1) {
					//ofLogNotice() << "Blue Mask" << endl;
					currentImage = wolfManImage;
					isNoImage = false;
				}
				else if ((int)commandBytes[3] == 1) {
					//ofLogNotice() << "Yellow Mask" << endl;
					currentImage = jasonMaskImage;
					isNoImage = false;
				}
				else if ((int)commandBytes[4] == 1) {
					//ofLogNotice() << "White Mask" << endl;
					isNoImage = true;
				}

				if (!isNoImage) {
					overlayImageCenterOffsetX = int(currentImage.getWidth() / 2);
					overlayImageCenterOffsetY = int(currentImage.getHeight() / 2);
				}

			}
		}

/*
		//Log out info from Arduino
		static string str;
		stringstream ss;
		char ch;
		int readLimit = 1000;
		bool anyBytes = false;
		while ((ch = switchesDevice.readByte()) > 0 && readLimit-- > 0) {
			ss << ch;
			anyBytes = true;
		}

		if (anyBytes) {
			ofLogNotice() << "Bytes!" << endl;
			str += ss.str();
			ofLog(OF_LOG_NOTICE, str);
			anyBytes = false;
		}
*/
	}
}

//--------------------------------------------------------------
void ofApp::draw(){
	
	if (isDebugEnabled) {
		//Draw base grayscale image for testing
		ofSetHexColor(0xFFFFFF);
		cvGrayImg.draw(0, 0);

		//Set up vector draw
		ofSetHexColor(0xff0000);
		ofNoFill();

		/*
		//Draw first blob
		if (finder.blobs.size() > 0) {
			ofRectangle cur = finder.blobs[0].boundingRect;
			ofDrawRectangle(cur.x, cur.y, cur.width, cur.height);
		}
		*/
		//Draw all blobs
		int numBlobs = finder.blobs.size();
		for (int i = 0; i < numBlobs; i++) {
			ofRectangle cur = finder.blobs[i].boundingRect;
			ofDrawRectangle(cur.x, cur.y, cur.width, cur.height);
		}
	}
	
	//Handle overlay drawing
	ofSetHexColor(0xFFFFFF);
	if (!isNoImage) {
		currentImage.draw(overlayImageY, overlayImageX);
	}
	
	//Overlay Debug Text
	if (isDebugEnabled) {
		stringstream reportStream;
		
		reportStream << "FPS: " << ofGetFrameRate() << "/" << ofGetTargetFrameRate() << endl
			<< "Blobs Found: " << finder.blobs.size() << endl;
		
		ofDrawBitmapString(reportStream.str(), 10, WINDOW_HEIGHT - 30);
	}
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
	if (key == 'r') {
		currentImage = zombieImage;
		isNoImage = false;
	}
	
	if (key == 'g') {
		currentImage = frankensteinImage;
		isNoImage = false;
	}

	if (key == 'b') {
		currentImage = wolfManImage;
		isNoImage = false;
	}

	if (key == 'y') {
		currentImage = jasonMaskImage;
		isNoImage = false;
	}

	if (key == 'w') {
		isNoImage = true;
	}
	
	if (!isNoImage) {
		overlayImageCenterOffsetX = int(currentImage.getWidth() / 2);
		overlayImageCenterOffsetY = int(currentImage.getHeight() / 2);
	}

	if (key == 's' || key == 'S') {
		vidGrabber.videoSettings();
	}
	else if (key == 'd') {
		isDebugEnabled = !isDebugEnabled;
	}
}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
