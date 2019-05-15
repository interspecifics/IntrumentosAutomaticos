/* 
 * Instrumentos Automáticos: dataReceiver
 * -----------  -----------  ------------.
 * Cacha los caracteres ascii que llegan por el puerto serial,
 * cada uno corresponde con una secuencia de movimientos del stepper
 * Funciona en conjunto con 
 * 
 * 
 * interspecifics.cc
 * 
 * 
 */



#include <Stepper.h>

Stepper stepper_two(stepsPerRevolution, 3, 4, 5, 6);
const int stepsPerRevolution = 200;
int nBeats;
int car=0;
int val=0;
int pinLed = 13;



// --- --- 
void setup() {
  Serial.begin(57600);  //9600, 115200
  pinMode(pinLed, OUTPUT);
  //
  stepper_two.setSpeed(20);
  stepper_two.step(4);
  delay(20);
}


// --- --- 
void loop() {
  // if available read serial data
  while (Serial.available()) {
    car = Serial.read();
    // cacha digits
    if ((car >= '0') && (car <= '9')) {
      val = 10 * val + car - '0';
    }
    // catch delimiter
    else if (car == '.') {
      Serial.println(val);
      val = 0;
    }

    // selecciona de acuerdo al valor del dato recibido
    if (val==65){
      nBeats = 2;
      for (int i=0; i<nBeats; i++){
        stepper_two.step(-4);
        delay(20);
        stepper_two.step(4);
        delay(40);
      }
    }
    if (val==66){
      digitalWrite(pinLed, HIGH);
      delay(100);
      digitalWrite(pinLed, LOW);
      delay(50);
      digitalWrite(pinLed, HIGH);
      delay(100);
      digitalWrite(pinLed, LOW);
      delay(50);
    }      
  }
}
