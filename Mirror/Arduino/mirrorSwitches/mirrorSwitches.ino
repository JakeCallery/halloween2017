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


void setup() {
  // put your setup code here, to run once:  
  Serial.begin(9600);
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

  yellowSwitchState = digitalRead(YELLOW_SWITCH_PIN);
  redSwitchState = digitalRead(RED_SWITCH_PIN);
  greenSwitchState = digitalRead(GREEN_SWITCH_PIN);
  blueSwitchState = digitalRead(BLUE_SWITCH_PIN);
  whiteSwitchState = digitalRead(WHITE_SWITCH_PIN);
  
  digitalWrite(YELLOW_LED_PIN, yellowSwitchState);
  digitalWrite(RED_LED_PIN, redSwitchState);
  digitalWrite(GREEN_LED_PIN, greenSwitchState);
  digitalWrite(BLUE_LED_PIN, blueSwitchState);
  digitalWrite(WHITE_LED_PIN, whiteSwitchState);

 
  
}
