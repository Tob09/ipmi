/*
Tobías Kai Aguado - Comisión 4
Link de Youtube: https://youtu.be/1Z4BJY6hLHI?si=aggi_6-c6M8wzNMU
Hola profe, quería avisar que tuve que cambiar de imagen, ya que la que te había enviado la intenté hacer de 
varias formas, pero no la podía replicar sin usar cosas que no dimos en clase, así que decidí tomar una imagen
del drive que hay en el colaboratorio, espero que afecte mi nota, porque intenté de todo para hacer la otra y no
pude :(
*/

PImage img;
boolean modificarColor = false;
float desplazarBlanco = 0;
boolean moverCuadrados = false;
int opacidadBlanco = 255;
boolean cambiarOpacidad = false;
PFont fuente;


void setup(){
  size(800, 400);
  img = loadImage("opart.jpeg");
  fuente = createFont("LucidaBrightDemibold.ttf",10);
}

void draw(){
  background(255);
   image (img, 0, 0, width/2, height) ; 

//el siguiente código espeja el lienzo (al mover el mouse a la mitad derecha del sketch)
  pushMatrix();
  if(mouseX>600){
    translate(600,200);
    rotate(PI);
    translate(-600,-200);
}


//el siguiente código modifica los colores de la obra(al mover el mouse a la mitad inferior del sketch)
if (mouseX > 400 && mouseY > 200) {
  modificarColor = false;
} else {
  modificarColor = true;
}

//el siguiente código ayuda a mover la posición de los cuadrados blancos con una pequeña animación (al hacer click en la mitad derecha del sketch)
  if (moverCuadrados && desplazarBlanco<25) {
    desplazarBlanco += 1;
}

//el siguiente código ayuda a cambiar la opacidad de los cuadrados blancos (al hacer click en la mitad izquierda del sketch)
if (cambiarOpacidad && opacidadBlanco > 0) {
  opacidadBlanco -= 5;
}

  dibujarPatron();
  popMatrix();

  dibujarCartel();
}

void mousePressed(){
//el siguiente código mueve la posición de los cuadrados blancos con una pequeña animación (al hacer click en la parte derecha del sketch)
  if (mouseX > 600){
    moverCuadrados = !moverCuadrados; 
    
  }
//el siguiente código cambia la opacidad de los cuadrados blancos con una pequeña animación (al hacer click en la parte izquierda del sketch)
  if (mouseX < 600 && mouseX > 400){
    cambiarOpacidad = true;
  }
}

//el siguiente código reinicia las variables al presionar la tecla R
void keyPressed(){
  if (key == 'r'){
    desplazarBlanco = 0;
    moverCuadrados = false;
    opacidadBlanco = 255;
    cambiarOpacidad = false;
    modificarColor = false;
    desplazarBlanco = 0;
  }
}
