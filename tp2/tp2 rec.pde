PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
PImage imagen7;
PImage imagen8;
int indiceImagen = 0;
PFont fuente1;
PFont fuente2;

//mover los textos
int X;
float Y = -100;
float centroY;
float centroX;
float velocidad = 2;
float velocidad2 = 5;
String textoD4 = "Mima se vuelve cada vez más\n obsesionada con su carrera y su\n imagen pública. Comienza a recibir\n cartas de un admirador anónimo que\n parece conocerla muy bien";
float segY = 500;
float segX = -350;
String textoD5 = "Mima comienza a experimentar\n alucinaciones y visiones que la\n hacen cuestionar su realidad. Ve a\n su yo idol en lugares y situaciones\n que no son reales";
String textoD7 = "Mima enfrenta a su acosador y se\n enfrenta a la verdad sobre sí misma\n y su carrera. La película termina\n con una imagen ambigua que deja al\n espectador cuestionando la realidad\n y la identidad de Mima";

//aumentar tamaño de textos
float x = 10;
float y = 100;
float tamText = 1;
float crecimiento = 0.5;
String textoD2 = "Mima Kirigoe es una joven idol que\n forma parte del grupo de pop CHAM.\n Ella decide dejar el grupo para\n seguir una carrera como actriz";
float tamText2 = 300;

//cambiar opacidad de textos
float opacidad = 0;
float opacidad2 = 0;
float opSpeed = 2;

void setup() {
 size(640, 480);
 background (0);
 fuente1 = createFont("Algerian",100);
 fuente2 = createFont("LucidaBrightDemibold.ttf",70);
 X = 750;
 centroY = height/2;
 centroX = width/2;
 imagen1 = loadImage("diapositiva1.png");
 imagen2 = loadImage("diapositiva2.png");
 imagen3 = loadImage("diapositiva3.png");
 imagen4 = loadImage("diapositiva4.png");
 imagen5 = loadImage("diapositiva5.png");
 imagen6 = loadImage("diapositiva6.png");
 imagen7 = loadImage("diapositiva7.png");
 imagen8 = loadImage("diapositiva8.png");
}

void draw() {
 background (200);
 //PRIMERA DIAPOSITIVA .................................
 if (frameCount < 360){
   image(imagen1,0,0, width, height);
   textFont(fuente1);
   fill(255);
   text ("PERFECT BLUE", X, 240);
   X -= 4;
 }
   
 //SEGUNDA DIAPOSITIVA .................................
 else if (frameCount > 360 && frameCount < 600){
   image(imagen2,0,0, width, height);
   textFont(fuente2);
   fill(200,0,100);
     if(tamText < 30) {
     tamText += crecimiento;
     }
     textSize(tamText);
     x = (width - textWidth(textoD2)) /2;
     textAlign(CENTER, CENTER);
     text(textoD2, width/2, 370);
 }
 
 //TERCERA DIAPOSITIVA .................................
 else if (frameCount > 600 && frameCount < 950){
   image(imagen3,0,0, width, height);
   textFont(fuente2);
   textSize(30);
    if(opacidad < 255){
     opacidad += opSpeed;
    }
    fill (255, opacidad);
    textAlign(CENTER, CENTER);
    text ("Mima comienza a trabajar en una\n serie de televisión, pero se siente\n insegura y ansiosa por su nuevo\n papel. Empieza a experimentar una\n desconexión entre su vida real y su\n imagen pública.", width/2, 240);
 }
 
 //CUARTA DIAPOSITIVA .................................
 else if (frameCount > 950 && frameCount < 1300){
   image(imagen4,0,0, width, height);
   textFont(fuente2);
   fill(255);
   textSize(30);
    if(Y < centroY){
      Y += velocidad;
    }
    textAlign(CENTER, CENTER);
    text(textoD4, width/2, Y);
 }
 
 //QUINTA DIAPOSITIVA .................................
 else if (frameCount > 1300 && frameCount < 1650){
   image(imagen5,0,0, width, height);
   textFont(fuente2);
   fill(255);
   textSize(30);
   text(textoD5, width/2, segY);
   fill(255);
    if(segY > centroY){
      segY -= velocidad;
    }
    textAlign(CENTER, CENTER);
 }
 
 //SEXTA DIAPOSITIVA ..................................
 else if (frameCount > 1650 && frameCount < 2000){
   image(imagen6,0,0, width, height);
   textFont(fuente2);
   fill(255);
   textSize(tamText2);
   if (tamText2 > 30){
   tamText2 -= velocidad2;
   }
   text ("Un detective está investigando una\n serie de crímenes relacionados con\n el mundo del espectáculo. Mima\n descubre que su admirador anónimo\n es en realidad un acosador que la\n ha estado siguiendo y observando", width/2, height/2);
   textAlign(CENTER,CENTER);
 }
 
 //SÉPTIMA DIAPOSITIVA .................................
 else if (frameCount > 2000 && frameCount < 2350){
   image(imagen7,0,0, width, height);
   textFont(fuente2);
   fill(255);
   textSize(30);
    if(segX < centroX){
      segX += velocidad2;
    }
    textAlign(CENTER, CENTER);
    text(textoD7, segX, height/2);
 }
 
 //OCTAVA DIAPOSITIVA ................................. 
 else if (frameCount > 2350 && frameCount < 2700){
   image(imagen8,0,0, width, height);
   textFont(fuente2);  
   if(opacidad2 < 255){
     opacidad2 += opSpeed;
    }
    textSize(30);
    fill (255, opacidad2);
    textAlign(CENTER, CENTER);
    text ("Perfect Blue, es una película que\n explora temas de identidad, realidad\n y la presión de la fama. Es una\n obra maestra del anime psicológico\n que ha sido ampliamente aclamada\n por su complejidad y profundidad",centroX , 240);   
 }
 
//BOTÓN.................................
if (frameCount > 2550){
      image(imagen8,0,0, width, height);
      textFont(fuente2);  
       textSize(30);
      fill (255);
      text ("Perfect Blue, es una película que\n explora temas de identidad, realidad\n y la presión de la fama. Es una\n obra maestra del anime psicológico\n que ha sido ampliamente aclamada\n por su complejidad y profundidad",centroX , 240);   
      fill(0);
      rect(557, 414, 66, 51);
      fill(255);
      rect(560, 417, 60, 45);
      fill(0);
      ellipse(590, 439, 30, 30);
      fill(255);
      ellipse(590, 439, 20, 20);
      fill(255);
      triangle(573, 428, 586, 437, 574, 439);
      fill(0);
      noStroke();
      triangle(574, 439, 586, 437, 576, 451);
 } 
  }

    void mouseClicked(){
    if(mouseX > 560 && mouseX < 620 && mouseY > 417 && mouseY < 462) {
       fill(0);
       rect(557, 414, 66, 51);
       fill(180);
       rect(560, 417, 60, 45);
       fill(255);
       ellipse(590, 439, 30, 30);
       fill(180);
       ellipse(590, 439, 20, 20);
       fill(180);
       triangle(573, 428, 586, 437, 574, 439);
       fill(255);
       noStroke();
       triangle(574, 439, 586, 437, 576, 451);
      frameCount = 0;
      tamText = 0;
      opacidad = 0;
      Y = -100;
      segY = 500;
      segX = -350;
      opacidad2 = 0;
      X = 750;
      tamText2 = 300;
    }
  }
  

 

 
 
 
 
 
 
 
 
 
 
 
