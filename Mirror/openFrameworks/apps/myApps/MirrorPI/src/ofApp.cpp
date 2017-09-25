#include "ofApp.h"

#define FACE_FIND_DELAY 500

//--------------------------------------------------------------
void ofApp::setup(){
	ofSetLogLevel(OF_LOG_VERBOSE);
	ofLogNotice() << "Starting Up...";

	//Inits
	elapsedTime = 0;

	//Cam Setup
	camWidth = 160;
	camHeight = 120;

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

	if (arguments.size() > 1) {
		string arg = arguments.at(1);
		webcamId = (char)arg.at(0);
	}
	else {
		webcamId = '0';
	}
	
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
	overlayImage.load("testtikimask.png");
	//overlayImage.load("MonsterMask1.png");
	overlayImage.rotate90(3);
	overlayImageCenterOffsetX = int(overlayImage.getWidth() / 2);
	overlayImageCenterOffsetY = int(overlayImage.getHeight() / 2);
	


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
		if ((ofGetElapsedTimeMillis() - elapsedTime) > FACE_FIND_DELAY) {
			finder.findHaarObjects(cvGrayImg);
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
			overlayImageX = (int)((WINDOW_HEIGHT * blobCenterXPercent) - overlayImageCenterOffsetY);
			overlayImageY = (int)((WINDOW_WIDTH * blobCenterYPercent) - overlayImageCenterOffsetX);

			//Counteract Camera offset
			overlayImageX += X_CAM_OFFSET;
			overlayImageY += Y_CAM_OFFSET;
		}

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
	overlayImage.draw(overlayImageY, overlayImageX);

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
	if (key == 's' || key == 'S') {
		vidGrabber.videoSettings();
	}
	else if (key == 'f') {
		maskCount = (maskCount + 1) % NUM_MASKS;

		switch (maskCount) {
			case 0:
				overlayImage.load("MonsterMask1.png");
				break;
			case 1:
				overlayImage.load("testtikimask.png");
				break;
			default:
				ofLogNotice() << "Bad Mask Count" << maskCount;
		}

		overlayImage.rotate90(3);
		overlayImageCenterOffsetX = int(overlayImage.getWidth() / 2);
		overlayImageCenterOffsetY = int(overlayImage.getHeight() / 2);
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
