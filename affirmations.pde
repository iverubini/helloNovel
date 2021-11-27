PFont miF;

 // This code was made for the NaNoGenMo project: link.
 // Thanks to Diego de los Campos, Daniel Shiffman, Christian Heck... http://learningprocessing.com/examples/chp16/example-16-06-Grid
 


String [] sustantivo = {"Extinção", "Amor", "Dor", "Esquecimento"};
String [] verbo      = {"é", "era", "será", "foi", "não é" };
String [] artigo     = {"uma", "a" , "algo como uma"};
String [] adjetivo   = {"aparência", "carga espantosa", "barra pessada", "jornada cícliaca"};

//int width = 437;
//int height = 620;

int i, ii; 

int videoScale = 8;
int cols, rows;



void setup () {
  //size(1748, 2480); A5 in 300dpi
  size(437, 620);
  
  cols = width/videoScale;
  rows = height/videoScale;
  

  
  noLoop();
  
}

void draw () {
  
  background(242, 243, 174);
  
  for (int g = 0; g < cols; g++) {
    // Begin loop for rows
    for (int h = 0; h < rows; h++) {

      // Scaling up to draw a rectangle at (x,y)
      int x = g*videoScale;
      int y = h*videoScale;
      fill(252, 158, 79, 80);
      stroke(249, 250, 220);
      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
      rect(x, y, videoScale, videoScale);
    }
  }
  
  escrita();
  
}

void escrita(){
 
  
  float loc = random (0, 9);
 // float loc_palavra = 
  
   stroke(244, 68, 46);
   fill(244, 68, 46);
  for (int i = 10; i < width; i = i + width / 2) {
    for (int ii = 5; ii < height ; ii = ii + height / 3) {
  rect(i + loc , ii + loc , height/3.5, height/3.5, 15);
  push();
  fill(237, 211, 130);
  rect(i+ loc+ random (2, 9) , ii+ loc+ random (2, 9), height/3.7, height/3.7, 15);
  
  //String frase = sustantivo[int(random(sustantivo.length))]+" "+
  //                    verbo[int(random(verbo.length ))]    +" "+
  //                   artigo[int(random(artigo.length))]    +" "+
  //                 adjetivo[int(random(sustantivo.length))]+".";
  

  
  pop();
  
  
  push();
  
  miF = createFont("YesevaOne-Regular.ttf", 15);
  
  textFont(miF);
  
  fill(0);
  text ("palavra" + ".", i + 75, ii + 45 );
  
  pop();
  
   }
  }
}
  
