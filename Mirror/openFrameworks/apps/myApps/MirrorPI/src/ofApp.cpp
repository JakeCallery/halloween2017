#include "ofApp.h"

#define FACE_FIND_DELAY 100

//--------------------------------------------------------------
void ofApp::setup(){
	ofSetLogLevel(OF_LOG_VERBOSE);
	ofLogNotice() << "Starting Up...";

	//Inits
	elapsedTime = 0;

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

	vidGrabber.setDeviceID(0);
	vidGrabber.setDesiredFrameRate(60);
	vidGrabber.initGrabber(camWidth, camHeight);

	//Set up haar xml
	finder.setup("haarcascade_frontalface_default.xml");

	videoInverted.allocate(camWidth, camHeight, OF_PIXELS_RGB);
	videoTexture.allocate(videoInverted);
	ofSetVerticalSync(true);

	//img.load("test.jpg");
	//finder.findHaarObjects(img);



}

//--------------------------------------------------------------
void ofApp::update(){
	ofBackground(100, 100, 100);
	vidGrabber.update();

	if (vidGrabber.isFrameNew()) {
		//Generate image from pixels
		ofPixels &pixels = vidGrabber.getPixels();
		//img.setFromPixels(pixels);
		cvColorImg.setFromPixels(pixels);

		//Convert to greyscale image
		cvGrayImg = cvColorImg;

		//Update every so often
		if ((ofGetElapsedTimeMillis() - elapsedTime) > FACE_FIND_DELAY) {
			finder.findHaarObjects(cvGrayImg);
		}

	}
}

//--------------------------------------------------------------
void ofApp::draw(){
	ofSetHexColor(0xffffff);

	cvGrayImg.draw(0, 0);
	ofNoFill();

	if (finder.blobs.size() > 0) {
		ofRectangle cur = finder.blobs[0].boundingRect;
		ofDrawRectangle(cur.x, cur.y, cur.width, cur.height);
	}

/*
	ofLogNotice() << "Num Blobs: " << finder.blobs.size();
	for (unsigned int i = 0; i < finder.blobs.size(); i++) {
		ofRectangle cur = finder.blobs[i].boundingRect;
		ofDrawRectangle(cur.x, cur.y, cur.width, cur.height);
	}
	*/
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
	if (key == 's' || key == 'S') {
		vidGrabber.videoSettings();
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
