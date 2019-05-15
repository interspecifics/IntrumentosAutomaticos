
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

void setup() {
  // se puede jugar con esta instruccion!;
  stepper_two.setSpeed(20);
  stepper_two.step(4);
  delay(20);  
}


void loop() {
  // numero de golpes paso 1
  nBeats = 6;
  for (int i=0; i<nBeats; i++){
    stepper_two.step(-8);
    delay(20);
    stepper_two.step(8);
    delay(120);
  }
  delay(260);

  // paso 2
  stepper_two.step(-4);
  delay(20);
  stepper_two.step(4);
  delay(420);

  //paso3
  // numero de golpes: 
  nBeats = 2;
  for (int i=0; i<nBeats; i++){
    stepper_two.step(-4);
    delay(20);
    stepper_two.step(4);
    delay(80);
  }
  delay(440);

  // paso 4
  nBeats = 3;
  for (int i=0; i<nBeats; i++){
    stepper_two.step(-8);
    delay(20);
    stepper_two.step(8);
    delay(40);
  }
  delay(460);

  // paso 5
  stepper_two.step(-8);
  delay(20);
  stepper_two.step(8);
  delay(420);

  // paso 6
  nBeats = 9;
  for (int i=0; i<nBeats; i++){
    stepper_two.step(-16);
    delay(80);
    stepper_two.step(16);
    delay(480);
  }
  delay(160);

  // pausa al final
  delay(1000);
}


