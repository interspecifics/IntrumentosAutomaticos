
/*
the motors for automatic instruments
stepper: 0  1  2  3
         +  -  -  -
L293D:   3  6  11 14
 */

#include <Stepper.h>

const int stepsPerRevolution = 200;
Stepper stepper_two(stepsPerRevolution, 3, 4, 5, 6);

int stepCount = 0;
int nBeats;
int pinLed = 7;


void setup() {
  stepper_two.setSpeed(20);
  /*for (int i=0; i<8; i++){
        stepper_two.step(1);
        delay(10);  
  }*/
  stepper_two.step(4);
  delay(20);
  pinMode(pinLed, OUTPUT);
  digitalWrite(pinLed, LOW);
}


void loop() {
  // numero de golpes paso 1
  nBeats = 6;
  for (int i=0; i<nBeats; i++){
    digitalWrite(7, HIGH);
    stepper_two.step(-8);
    delay(20);
    digitalWrite(7, LOW);
    stepper_two.step(8);
    delay(40);
  }
  delay(260);

  // paso 2
  digitalWrite(7, HIGH);
  stepper_two.step(-4);
  delay(20);
  digitalWrite(7, LOW);
  stepper_two.step(4);
  delay(420);

  //paso3
  // numero de golpes: 
  nBeats = 2;
  for (int i=0; i<nBeats; i++){
    digitalWrite(7, HIGH);
    stepper_two.step(-4);
    delay(20);
    digitalWrite(7, LOW);
    stepper_two.step(4);
    delay(80);
  }
  delay(440);
}


