#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main(int argc, char *argv[] ){
	//ofSetupOpenGL(1024,768,OF_WINDOW);			// <-------- setup the GL context
	//ofSetupOpenGL(1920, 1080, OF_WINDOW);			// <-------- setup the GL context
	ofSetupOpenGL(WINDOW_WIDTH, WINDOW_HEIGHT, OF_WINDOW);

	ofSetFullscreen(true);

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:

	ofApp *app = new ofApp();
	app->arguments = vector<string>(argv, argv + argc);
	ofRunApp(app);

}
