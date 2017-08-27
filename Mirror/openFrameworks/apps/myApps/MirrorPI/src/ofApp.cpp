#include "ofApp.h"

using namespace ofxCv;

//--------------------------------------------------------------
void ofApp::setup(){
	ofSetLogLevel(OF_LOG_VERBOSE);
	ofLogNotice() << "Starting Up...";

	cam.initGrabber(1280, 720);
	ofBackground(0);
	tracker.setup();
}

//--------------------------------------------------------------
void ofApp::update(){
	cam.update();
	if (cam.isFrameNew()) {
		tracker.update(toCv(cam));
	}
}

//--------------------------------------------------------------
void ofApp::draw(){
	if (ofGetKeyPressed()) {
		ofSetColor(255);
		cam.draw(0, 0);
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

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
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
