PImage img ;

void setup() {
  size (800,400) ;
  frameRate (1) ;
  img = loadImage("tp1.jpg") ;
}
  
  void draw(){ 
    background(120) ;
    image (img, 0, 0, width/2, height) ;
    fill(0);
  textSize(16);
  text("X: " + mouseX + "  Y: " + mouseY, 10, 20); 
  
   fill (220) ;
   noStroke() ;
   rect (451,338,311,31) ;
   triangle (418,370,451,338,451,370) ;
   triangle (762,337,783,371,761,370) ;
   fill (160) ;
   rect (420,368,362,31) ;
   fill (181,71,44) ;
   triangle (569,277,671,186,640,357) ;
   triangle (638,165,687,172,694,69) ;
 
   fill (168,43,5) ;
   stroke (123,34,2) ;
   triangle (613,158,620,160,650,62) ;
   triangle (499,170,649,62,573,265) ;
   triangle (569,277,613,159,687,173) ;
   triangle (569,277,578,287,540,355) ;
   triangle (539,140,481,70,565,123) ;
  
   fill (123,34,2) ;
   triangle (616,351,623,338,595,306) ;
   triangle (553,240,573,268,645,71) ;
   triangle (569,278,578,287,557,325) ;
   triangle(522,154,481,70,539,140) ;
   
   stroke (255,140) ;
   line (481,69,540,140) ;
   line (693,71,687,174) ;
  }
  
