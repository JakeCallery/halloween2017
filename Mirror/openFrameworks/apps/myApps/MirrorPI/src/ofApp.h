#pragma once

#include "ofMain.h"
#include "ofxCvHaarFinder.h"
#include "ofxGui.h"

#define WINDOW_WIDTH 1920
#define WINDOW_HEIGHT 1080

#define BLOB_HEIGHT_HISTORY_LENGTH 60

#define FACE_FIND_DELAY 16
#define SWITCHES_DEVICE_SEND_DELAY 16
#define LIGHTS_DEVICE_SEND_DELAY 1000

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

		void clearBlobHeightHistory();
		int averageBlobHeights();

		uint64_t faceFindElapsedTime;
		uint64_t switchesDeviceWriteElapsedTime;
		uint64_t lightsDeviceWriteElapsedTime;

		//GUI Panels
		ofxPanel adjustmentPanel;

		//GUI Sliders
		ofxFloatSlider maskOverScaleSlider;
		ofxFloatSlider maskVerticalOffsetSlider;
		ofxFloatSlider maskHorizontalOffsetSlider;
		ofxFloatSlider maskVerticalPosScaleSlider;
		ofxFloatSlider maskHorizontalPosScaleSlider;
		ofxFloatSlider lightLevelSlider;

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
		ofImage jasonMaskImage;
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
		int overlayImageWidth;
		int overlayImageHeight;

		int maskCount = 0;
		bool isDebugEnabled = true;

		vector<string> arguments;

		//Serial Devices
		string switchesCOM;
		string lightsCOM;

		ofSerial switchesDevice;
		ofSerial lightsDevice;

		bool fillingCommand = false;
		unsigned int numCommandBytes = 0;
		unsigned char commandBytes[5] = {2,2,2,2,2};

		//Smoothing
		bool hasBlobs = false;
		int blobHistoryIndex = 0;
		int blobHeightHistory[BLOB_HEIGHT_HISTORY_LENGTH];
};
