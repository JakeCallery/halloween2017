const int YELLOW_SWITCH_PIN = 13;
const int YELLOW_LED_PIN = 7;

const int RED_SWITCH_PIN = 12;
const int RED_LED_PIN = 6;

const int GREEN_SWITCH_PIN = 11;
const int GREEN_LED_PIN = 5;

const int BLUE_SWITCH_PIN = 10;
const int BLUE_LED_PIN = 4;

const int WHITE_SWITCH_PIN = 9;
const int WHITE_LED_PIN = 3;


int yellowSwitchState = LOW;
int redSwitchState = LOW;
int greenSwitchState = LOW;
int blueSwitchState = LOW;
int whiteSwitchState = LOW;

bool fillingCommand = false;
int numCommandBytes = 0;
unsigned char commandBytes[5] = {2,2,2,2,2};

void setup() {
  // put your setup code here, to run once:  
  Serial.begin(57600);
  Serial.print("Setup");
  
  pinMode(YELLOW_SWITCH_PIN, INPUT);
  pinMode(YELLOW_LED_PIN, OUTPUT);

  pinMode(RED_SWITCH_PIN, INPUT);
  pinMode(RED_LED_PIN, OUTPUT);

  pinMode(GREEN_SWITCH_PIN, INPUT);
  pinMode(GREEN_LED_PIN, OUTPUT);

  pinMode(BLUE_SWITCH_PIN, INPUT);
  pinMode(BLUE_LED_PIN, OUTPUT);

  pinMode(WHITE_SWITCH_PIN, INPUT);
  pinMode(WHITE_LED_PIN, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

//TODO: Capture all bytes and update as needed
  //for now drop partial commands, wait for init byte
  unsigned char inByte = 0;
  int numBytes = Serial.available();
  for(int i = 0; i < numBytes; i++){
      inByte = Serial.read();
      //Serial.print("Byte: ");
      //Serial.println(inByte);
      //Serial.print("===== NUM BYTES: ");
      //Serial.println(numBytes);
      if((int)inByte == 255){
        //We are now filling the command
        //Serial.print("=== INIT BYTE: ");
        //Serial.println(numBytes);
        fillingCommand = true;
        numCommandBytes = 0;
        //Serial.println("******************** Filling Command...");
      } else if(fillingCommand && numCommandBytes < 5){
//        Serial.print("Filling: ");
//        Serial.println(inByte);
        commandBytes[numCommandBytes] = inByte;
        numCommandBytes++;
      }
      
      if(fillingCommand && numCommandBytes >= 5){
        fillingCommand = false;
//        Serial.println("$$$$$$$$$$$$$$$$$$$");
//        Serial.print((int)commandBytes[0]);
//        Serial.print((int)commandBytes[1]);
//        Serial.print((int)commandBytes[2]);
//        Serial.print((int)commandBytes[3]);
//        Serial.print((int)commandBytes[4]);
//        Serial.println("$$$$$$$$$$$$$$$$$$$");
      }
  }

  if(fillingCommand && numCommandBytes < 5){
//    Serial.print("=== DIDN'T GET ALL BYTES IN THIS READ:  ");
//    Serial.println(numCommandBytes);
  }

  if((int)commandBytes[0] == 1){
    redSwitchState = HIGH;
  } else {
    redSwitchState = digitalRead(RED_SWITCH_PIN);  
  }

  if((int)commandBytes[1] == 1){
    greenSwitchState = HIGH;
  } else {
    greenSwitchState = digitalRead(GREEN_SWITCH_PIN);
  }

  if((int)commandBytes[2] == 1){
    blueSwitchState = HIGH;
  } else {
    blueSwitchState = digitalRead(BLUE_SWITCH_PIN);  
  }

  if((int)commandBytes[3] == 1){
    yellowSwitchState = HIGH;
  } else {
    yellowSwitchState = digitalRead(YELLOW_SWITCH_PIN);  
  }

  if((int)commandBytes[4] == 1){
    whiteSwitchState = HIGH;
  } else {
    whiteSwitchState = digitalRead(WHITE_SWITCH_PIN);    
  }
 
  digitalWrite(YELLOW_LED_PIN, yellowSwitchState);
  digitalWrite(RED_LED_PIN, redSwitchState);
  digitalWrite(GREEN_LED_PIN, greenSwitchState);
  digitalWrite(BLUE_LED_PIN, blueSwitchState);
  digitalWrite(WHITE_LED_PIN, whiteSwitchState);

  delay(16);
  
}
