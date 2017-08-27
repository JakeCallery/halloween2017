#pragma once

#include "ofMain.h"
#include "ofxCvHaarFinder.h"

class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void mouseEntered(int x, int y);
		void mouseExited(int x, int y);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);

		uint64_t elapsedTime;

		//const FACE_FIND_DELAY = 500;

		//Haar finder bits
		ofImage img;
		ofxCvGrayscaleImage cvGrayImg;
		ofxCvColorImage cvColorImg;
		ofxCvHaarFinder finder;

		//webcam bits
		ofVideoGrabber vidGrabber;
		ofPixels videoInverted;
		ofTexture videoTexture;
		int camWidth;
		int camHeight;
};
