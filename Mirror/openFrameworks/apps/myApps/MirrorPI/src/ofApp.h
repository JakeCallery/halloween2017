#pragma once

#include "ofMain.h"
#include "ofxCvHaarFinder.h"

#define WINDOW_WIDTH 1920
#define WINDOW_HEIGHT 1080
#define Y_CAM_OFFSET -500
#define X_CAM_OFFSET 0
#define NUM_MASKS 2

#define FACE_FIND_DELAY 100
#define SERIAL_SEND_DELAY 16

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

		uint64_t faceFindElapsedTime;
		uint64_t serialWriteElapsedTime;

		//Haar finder bits
		ofxCvGrayscaleImage cvGrayImg;
		ofxCvColorImage cvColorImg;
		ofxCvHaarFinder finder;

		//webcam bits
		ofVideoGrabber vidGrabber;
		int camWidth = 320;
		int camHeight = 240;

		//Images
		ofImage tikiMaskImage;
		ofImage zombieImage;
		ofImage frankensteinImage;
		ofImage wolfManImage;
		ofImage currentImage;
		bool isNoImage = true;

		//Helpers
		int lastBlobX;
		int lastBlobY;
		int lastBlobWidth;
		int lastBlobHeight;
		int lastBlobCenterX;
		int lastBlobCenterY;

		double blobCenterXPercent;
		double blobCenterYPercent;

		int overlayImageCenterOffsetX;
		int overlayImageCenterOffsetY;
		int overlayImageX;
		int overlayImageY;

		int maskCount = 0;
		bool isDebugEnabled = true;

		string switchesCOM;
		string lightsCOM;

		ofSerial switchesDevice;
		ofSerial lightsDevice;

		vector<string> arguments;

		bool fillingCommand = false;
		unsigned int numCommandBytes = 0;
		unsigned char commandBytes[5] = {2,2,2,2,2};
};
