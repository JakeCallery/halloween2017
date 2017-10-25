#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
  #include <avr/power.h>
#endif

#define PIN 6

bool fillingCommand = false;
int numCommandBytes = 0;
unsigned char commandBytes[5] = {0,0,0,0,0};

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
//   NEO_RGBW    Pixels are wired for RGBW bitstream (NeoPixel RGBW products)
Adafruit_NeoPixel strip = Adafruit_NeoPixel(60, PIN, NEO_GRB + NEO_KHZ800);

// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
// and minimize distance between Arduino and first pixel.  Avoid connecting
// on a live circuit...if you must, connect GND first.

void setup() {
  // This is for Trinket 5V 16MHz, you can remove these three lines if you are not using a Trinket
  #if defined (__AVR_ATtiny85__)
    if (F_CPU == 16000000) clock_prescale_set(clock_div_1);
  #endif
  // End of trinket special code

  Serial.begin(57600);

  strip.begin();
  strip.show(); // Initialize all pixels to 'off'

  halfLights();
  strip.show();

}


void loop() {
  // put your main code here, to run repeatedly:
  unsigned char inByte = 0;
  int numBytes = Serial.available();
  for(int i = 0; i < numBytes; i++)
  {
      inByte = Serial.read();
      if((int)inByte == 255){
        fillingCommand = true;
        numCommandBytes = 0;
      } else if(fillingCommand && numCommandBytes < 1){
        commandBytes[numCommandBytes] = inByte;
        numCommandBytes++;
      }
      
      if(fillingCommand && numCommandBytes >= 1){
        //Full command, run it
        
        fillingCommand = false;
        if((int)commandBytes[0] == 0)
        {
          //Turn off
          noLights();
          strip.show();  
        } 
        else if ((int)commandBytes[0] == 1)
        {
          //Half lights
          halfLights();
          strip.show();  
        } 
      }
  }
}

void noLights() {
  for(int i = 0; i < strip.numPixels(); i++)
  {
    strip.setPixelColor(i, strip.Color(0,0,0));
  }
}

void halfLights(){
 for(int i = 0; i < strip.numPixels(); i++)
  {
    if(i % 2 == 0)
    //if(true)
    {
      strip.setPixelColor(i, strip.Color(64,64,64));  
    }
  }
}

