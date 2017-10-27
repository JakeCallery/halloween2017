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
		lightsCOM = arguments.at(3);
		ofLogNotice() << "Using lightsCOM: " << lightsCOM << endl;
	}
	else {
		lightsCOM = "COM11";
		ofLogNotice() << "Defaulting lightsCOM: " << lightsCOM << endl;
	}

	switchesDevice.setup(switchesCOM, 57600);
	lightsDevice.setup(lightsCOM, 57600);

	switchesDeviceWriteElapsedTime = 0;
	lightsDeviceWriteElapsedTime = 0;

	int id = webcamId - '0';
	vidGrabber.setVerbose(false);
	vidGrabber.setDeviceID(id);
	vidGrabber.setDesiredFrameRate(60);
	vidGrabber.initGrabber(camWidth, camHeight);
	

	//Set up haar xml
	finder.setup("haarcascade_frontalface_default.xml");
	
	//Setup smoothing
	clearBlobHistory();

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

	//Setup GUI
	adjustmentPanel.setup("AdjustmentPanel");
	adjustmentPanel.setPosition(350, 0);
	adjustmentPanel.add(maskOverScaleSlider.setup("OverScale", 10.0, 0.1, 20.0));
	adjustmentPanel.add(maskVerticalOffsetSlider.setup("Vertical Offset", 0, -1000.0, 1000));
	adjustmentPanel.add(maskHorizontalOffsetSlider.setup("Horizontal Offset", 0, -200, 1000));
	adjustmentPanel.add(maskVerticalPosScaleSlider.setup("Vert Pos Scale", 1.0, 0.01, 5.0));
	adjustmentPanel.add(maskHorizontalPosScaleSlider.setup("Horiz Pos Scale",1.0, 0.01, 5.0));
	adjustmentPanel.add(lightLevelSlider.setup("Lights Level", 0.0, 0.0, 254));

}

//--------------------------------------------------------------
void ofApp::update(){
	ofBackground(0, 0, 0);
	vidGrabber.update();

	if (vidGrabber.isFrameNew()) {
		//Generate grayscale image from pixels
		ofPixels &pixels = vidGrabber.getPixels();
		cvColorImg.setFromPixels(pixels);
		cvColorImg.mirror(false, true);
		
		//Convert to greyscale image
		cvGrayImg = cvColorImg;

		//Update every so often
		if ((ofGetElapsedTimeMillis() - faceFindElapsedTime) > FACE_FIND_DELAY) {
			finder.findHaarObjects(cvGrayImg);
			faceFindElapsedTime = ofGetElapsedTimeMillis();
		}

		
		if (finder.blobs.size() > 0) {
			hasBlobs = true;
			ofRectangle curBlob;
			
			if (isFirstRun) {
				isFirstRun = false;	
				curBlob = finder.blobs[0].boundingRect;
				lastUsedBlob = curBlob;
			}
			
			//Find blob closest to last used blob
			int bestIndex;
			int smallestDist;
			for (int b = 0; b < finder.blobs.size(); b++) {
				ofRectangle thisBlob = finder.blobs[b].boundingRect;
				lastBlobVec.set(lastUsedBlob.x, lastUsedBlob.y);
				curBlobVec.set(thisBlob.x, thisBlob.y);
				distVec = lastBlobVec - curBlobVec;
				if (b == 0) {
					smallestDist = distVec.length();
					bestIndex = b;
				}
				else {
					if (distVec.length() < smallestDist) {
						smallestDist = distVec.length();
						bestIndex = b;
					}
				}
			}
			
			curBlob = finder.blobs[bestIndex].boundingRect;
			lastUsedBlob.x = curBlob.x;
			lastUsedBlob.y = curBlob.y;
			lastUsedBlob.width = curBlob.width;
			lastUsedBlob.height = curBlob.height;
			
			curBlobWidth = curBlob.width;
			curBlobHeight = curBlob.height;
			curBlobX = curBlob.x;
			curBlobY = curBlob.y;

			blobHeightHistory[blobHistoryIndex] = curBlobHeight;
			

			lastBlobCenterX = curBlobX + (int)(curBlobWidth / 2);
			lastBlobCenterY = curBlobY + (int)(curBlobHeight / 2);


			//Find location from webcam to full screen
			double xCamCenter = camWidth / 2;
			double yCamCenter = camHeight / 2;

			double xBlobDistFromCenter = lastBlobCenterX - xCamCenter;
			double yBlobDistFromCenter = lastBlobCenterY - yCamCenter;

			//Calculate "z depth" based on blob rect height
			//1:1 is 120
			double horizPosScaleRate = 120.0 / curBlobHeight;

			//Scale up distance from center
			xBlobDistFromCenter *= horizPosScaleRate * maskHorizontalPosScaleSlider;
			yBlobDistFromCenter *= maskVerticalPosScaleSlider;

			blobCenterXPercent = xBlobDistFromCenter / ((double)camWidth);
			blobCenterYPercent = yBlobDistFromCenter / ((double)camHeight);

			//Convert Distance to window space
			double xAmountFromCenter = (WINDOW_HEIGHT) * blobCenterXPercent;
			double yAmountFromCenter = -1 * (WINDOW_WIDTH) * blobCenterYPercent;

			//Calc target image location
			double screenXCenter = WINDOW_HEIGHT / 2;
			double screenYCenter = WINDOW_WIDTH / 2;

			blobCenterXHistory[blobHistoryIndex] = (int)(screenXCenter + xAmountFromCenter);
			blobCenterYHistory[blobHistoryIndex] = (int)(screenYCenter + yAmountFromCenter);

			ofVec2f avgLoc = averageBlobLoc();
			overlayImageX = (int)avgLoc.x;
			overlayImageY = (int)avgLoc.y;

			//Calc image size
			int avgBlobHeight = averageBlobHeights();
			int sizeDiff = currentImage.getWidth() - avgBlobHeight;
			float sizePercent = (currentImage.getWidth() - sizeDiff) / currentImage.getWidth();
			overlayImageWidth = (int)(avgBlobHeight * maskOverScaleSlider);
			overlayImageHeight = (int)((currentImage.getHeight() * sizePercent) * maskOverScaleSlider);

			//Shift overlay by half of height (center)
			overlayImageX -= overlayImageHeight / 2;

			//Counteract Camera offset
			overlayImageX += (int)maskHorizontalOffsetSlider;
			overlayImageY += (int)maskVerticalOffsetSlider;

			//Update history inex
			blobHistoryIndex++;
			if (blobHistoryIndex >= BLOB_HISTORY_LENGTH) {
				blobHistoryIndex = 0;
			}
		}
		else {
			hasBlobs = false;
			//Time out here after a while and enter idle mode
		}

	}

	//Update Switch Colors
	if (switchesDevice.isInitialized()) {
		//R,G,B,Y,W (0 or 1)
		if ((ofGetElapsedTimeMillis() - switchesDeviceWriteElapsedTime) > SWITCHES_DEVICE_SEND_DELAY) {

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
			switchesDeviceWriteElapsedTime = ofGetElapsedTimeMillis();
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

		if (lightsDevice.isInitialized()) {
			if ((ofGetElapsedTimeMillis() - lightsDeviceWriteElapsedTime) > LIGHTS_DEVICE_SEND_DELAY) {
				
				//reset timer
				lightsDeviceWriteElapsedTime = ofGetElapsedTimeMillis();

				//Send bytes
				unsigned char initByte = 255;
				unsigned char levelByte = (unsigned char)lightLevelSlider;
				unsigned char buf[2] = { initByte, levelByte };
				lightsDevice.writeBytes(&buf[0], 2);
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
	if (!isNoImage && hasBlobs) {
		currentImage.draw(overlayImageY, overlayImageX, overlayImageWidth, overlayImageHeight);
	}
	
	//Overlay Debug Text
	if (isDebugEnabled) {
		stringstream reportStream;
		
		reportStream << "FPS: " << ofGetFrameRate() << "/" << ofGetTargetFrameRate() << endl
			<< "Blobs Found: " << finder.blobs.size() << endl
			<< "Mask Center: " << overlayImageX << " / " << overlayImageY << endl
			<< "Blob Height: " << curBlobHeight << endl;

		ofDrawBitmapString(reportStream.str(), 10, WINDOW_HEIGHT - 60);

		//Draw GUI
		adjustmentPanel.draw();
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

void ofApp::clearBlobHistory() {
	for (int i = 0; i < BLOB_HISTORY_LENGTH; i++) {
		blobHeightHistory[i] = 0;
		blobCenterXHistory[i] = 0;
		blobCenterYHistory[i] = 0;
	}
}

int ofApp::averageBlobHeights() {
	int total = 0;
	for (int i = 0; i < BLOB_HISTORY_LENGTH; i++) {
		total += blobHeightHistory[i];
	}

	double avg = total / BLOB_HISTORY_LENGTH;
	return int(avg);
}

ofVec2f ofApp::averageBlobLoc() {
	int totalX = 0;
	int totalY = 0;
	
	for (int i = 0; i < BLOB_HISTORY_LENGTH; i++) {
		totalX += blobCenterXHistory[i];
		totalY += blobCenterYHistory[i];
	}

	double avgX = totalX / BLOB_HISTORY_LENGTH;
	double avgY = totalY / BLOB_HISTORY_LENGTH;

	return ofVec2f(avgX, avgY);
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
