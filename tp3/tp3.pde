/*
Tobías Kai Aguado - Comisión 4
Link de Youtube: https://youtu.be/1Z4BJY6hLHI?si=aggi_6-c6M8wzNMU
*/

PImage img;
boolean modificarColor = true;
float desplazarBlanco = 0;
boolean moverCuadrados = false;
int opacidadBlanco = 255;
PFont fuente;

void setup(){
  size(800, 400);
  img = loadImage("opart.jpeg");
  fuente = createFont("LucidaBrightDemibold.ttf",10);
}

void draw(){
  background(255);
   image (img, 0, 0, width/2, height) ; 

//el siguiente código espeja el lienzo (al mover el mouse a la mitad derecha del patrón)
  pushMatrix();
  if(mouseX>600){
    translate(600,200);
    rotate(PI);
    translate(-600,-200);
}

//el siguiente código ayuda a mover la posición de los cuadrados blancos con una pequeña animación (al hacer click en la mitad derecha del patrón)
  if (moverCuadrados && desplazarBlanco<25) {
    desplazarBlanco += 1;
}

//el siguiente código ayuda a cambiar la opacidad de los cuadrados blancos al mover el mouse verticalmente
opacidadBlanco = calcularOpacidad(mouseY);

  dibujarPatron();
  popMatrix();
}

void mousePressed(){
//el siguiente código mueve la posición de los cuadrados blancos con una pequeña animación (al hacer click en la parte derecha del patrón)
  if (mouseX > 600){
    moverCuadrados = !moverCuadrados; 
    }
    
//el siguiente código modifica los colores de la obra(al hacer click en la mitad izquierda del patrón)
if (mouseX > 400 && mouseX < 600) {
  modificarColor = !modificarColor;
}

//el siguiente código reinicia las variables al presionar la obra original
  if (mouseX < 400){
    desplazarBlanco = 0;
    moverCuadrados = false;
    opacidadBlanco = 255;
    modificarColor = true;
    desplazarBlanco = 0;
  }
}
