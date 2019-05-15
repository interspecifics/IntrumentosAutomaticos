/* 
 * Instrumentos Automáticos: sequencer
 * -----------  -----------  ------------.
 * Usa un objeto matrix como sequenciador
 * a cada paso envía un caractér por el puerto serie
 * dependiendo de la fila del sequenciador que esté activa en cada columna.
 * Funciona en conjunto con receiver_InstrAuto.ino
 * 
 * interspecifics.cc
 */
 
import processing.serial.*;
import controlP5.*;

Serial port;
ControlP5 cp5;

int nx = 16;
int ny = 4 ;


// --- --- 
void setup() {
  size(700, 400);

  cp5 = new ControlP5(this);

  cp5.addMatrix("sequencer")
     .setPosition(50, 100)
     .setSize(600, 200)  // tamaño
     .setGrid(nx, ny)    // numero de columnas y renglones
     .setGap(5, 15)      // espacio entre celdas
     .setInterval(500)   // duranción en ms de cada paso
     .setMode(ControlP5.SINGLE)
     .setColorBackground(color(120))
     .setBackground(color(40))
     ;
  
  cp5.getController("sequencer").getCaptionLabel().alignX(CENTER);

  port = new Serial(this, Serial.list()[0], 57600);
}


// --- --- 
void draw() {
  background(0);
}
 

//--
void sequencer(int theX, int theY) {
  println("activo: "+theX+", "+theY);
  if (theY==2){
    int number = 65; 
    println("now sending number: "+number);
    port.write(Integer.toString(number));
    port.write('.'); // end of mssg
  }
  if (theY==3){
    int number = 66; 
    println("now sending number: "+number);
    port.write(Integer.toString(number));
    port.write('.'); // end of mssg
  }
}



// --- --- 
void keyPressed(){
  if (key=='a'){
    int number = 65; 
    println("now sending number: "+number);
    port.write(Integer.toString(number));
    port.write('.'); // end of mssg
  }
  if (key=='b'){
    int number = 66;
    println("now sending number: "+number);
    port.write(Integer.toString(number));
    port.write('.'); // end of mssg
  }

}


// --- --- 
void serialEvent(Serial p) {
  try {
    // get message till line break (ASCII > 13)
    String message = p.readStringUntil(13);
    if (message != null) {
      println("message received: "+trim(message));
    }
  }
  catch (Exception e) {
  }
}
