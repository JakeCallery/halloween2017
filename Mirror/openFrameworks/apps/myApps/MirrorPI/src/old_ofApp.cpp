#include "ofApp.h"

using namespace ofxCv;

#define FACE_FIND_DELAY 100

//--------------------------------------------------------------
void ofApp::setup(){
	ofSetLogLevel(OF_LOG_VERBOSE);
	ofLogNotice() << "Starting Up...";

	//Inits
	elapsedTime = 0;

	//Cam Setup
	camWidth = 1280;
	camHeight = 720;

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

	//vidGrabber.setVerbose(false);
	//vidGrabber.setDeviceID(0);
	//vidGrabber.setDesiredFrameRate(60);
	vidGrabber.initGrabber(camWidth, camHeight);
	
	tracker.setup();

	//Set up haar xml
	//finder.setup("haarcascade_frontalface_default.xml");
	
	//Wait for sync
	//ofSetVerticalSync(true);
	ofBackground(0);

}

//--------------------------------------------------------------
void ofApp::update(){
	//ofBackground(100, 100, 100);
	vidGrabber.update();
	if (vidGrabber.isFrameNew()) {
		tracker.update(toCv(vidGrabber));
	}

	/*
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

	}
*/
}

//--------------------------------------------------------------
void ofApp::draw(){
	
	if (ofGetKeyPressed()) {
		ofSetColor(255);
		vidGrabber.draw(0, 0);
		ofSetColor(255, 32);
		ofSetLineWidth(1);
		tracker.getImageMesh().drawWireframe();
		tracker.draw(true);
	}

	ofSetColor(255);
	ofSetLineWidth(2);
	ofPushStyle();
	ofNoFill();
	ofSetColor(255);
	overlay.draw(tracker);
	ofPopStyle();
	ofDrawBitmapString(ofToString((int)ofGetFrameRate()), 10, 20);

	/*
	//Draw base grayscale image for testing
	ofSetHexColor(0xFFFFFF);
	cvGrayImg.draw(0, 0);
	
	//Set up vector draw
	ofSetHexColor(0xff0000);
	ofNoFill();

	//Draw firt blob
	if (finder.blobs.size() > 0) {
		ofRectangle cur = finder.blobs[0].boundingRect;
		ofDrawRectangle(cur.x, cur.y, cur.width, cur.height);
	}
	*/
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
	if (key == 's' || key == 'S') {
		vidGrabber.videoSettings();
	}

	if (key == 'r') {
		tracker.reset();
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