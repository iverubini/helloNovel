PFont miF, icons1;

import processing.pdf.*;

 // This code was made for NaNoGenMo 2021: https://github.com/NaNoGenMo/2021 .
 // Thanks to Diego de los Campos and Daniel Shiffman for the initial codes and inspiration, and Christian Heck, Julia Nakotte, Benita, Naoto and Sayaka @ KHM.
 
String [] subject = {"George", "Pasadena", "Michaella", "Cologne", "London", "He", "Winston", "Sophia", "Gertrude", "She"};
String [] verb = {"destroys", "brings", "fabricates", "analyses", "criticizes", "likes", "reads", "breaks down", "prints", "thinks about", "eroticizes"};
String [] object = {"bagels", "trips", "autos", "other people", "others", "grownups", "workers", "artists", "authors", "students"};

String [] modalVerbs = {"Does", "Did", "Doesn't", "Didn't", "Should", "Must", "Could", "Couldn't", "Might", "Won't", "Will", "Would", "Wouldn't"};
String [] names = {"Maria", "Laetitia", "Anna-Varney", "Oswald", "George", "Pasadena", "Michaella", "Cologne", "London",
"Winston", "Sophia", "Gertrude", "anyone"};
String [] infinitiveVerbs = {"destroy", "bring", "fabricate", "analyse", "criticize", "like", "read", "break down", "eroticize"};
String [] objects_q = {"bagels", "trips", "autos", "other people", "others", "grownups", "workers", "artists", "authors", "students"};

String [] icons = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "y", "w", "z" }; 

String [] verb2syl;

String [] pluralNouns;

String [] conjugated_verbs;

String [] characters;

//int width = 437;
//int height = 620;

int i, ii; 

int videoScale = 8;
int cols, rows;


void setup () {
  //size(1748, 2480); A5 in 300dpi
  size(437, 620, PDF, "affirmations.pdf");
  
  verb2syl = loadStrings("2syllablenouns.txt");
  pluralNouns = loadStrings("plural_nouns.txt");
  conjugated_verbs = loadStrings("verbs3rd.txt");
  characters= loadStrings("characters.txt");
  
  cols = width/videoScale;
  rows = height/videoScale;
  
  miF = createFont("YesevaOne-Regular.ttf", 15);
  
  textFont(miF);
  textAlign(CENTER);
  textLeading(18);
  
  icons1 = createFont("cute_icons.ttf", 15);
  
//  noLoop();
  
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
      

  fill(0); 
      
  if (frameCount%2==0) {text (frameCount, 20, 615);}
  else                 {text (frameCount, 415, 615 );}
      
    }
  }
  
  simple_affirmation();
  
  PGraphicsPDF pdf = (PGraphicsPDF) g;
  
    if (frameCount == 610) {
    exit();
  } else {
      
    pdf.nextPage();  // Tell it to go to the next page
  }
  
}



void simple_affirmation(){
 
  
  
  float loc = random (0, 9);
  
   stroke(244, 68, 46);
   fill(244, 68, 46);
  for (int i = 10; i < width; i = i + width / 2) {
    for (int ii = 5; ii < height ; ii = ii + height / 3) {
  rect(i + loc , ii + loc , height/3.5, height/3.5, 15);
  
  push();
  fill(237, 211, 130);
  rect(i+ loc+ random (2, 9) , ii+ loc+ random (2, 9), height/3.7, height/3.7, 15);

  pop();
  
    String sentence1 = //subject[int(random(subject.length))]+ " " +
               characters[int(random(characters.length))] + " " +
               conjugated_verbs[int(random(conjugated_verbs.length))] + " " +
              // verb[int(random(verb.length ))]    +" "+
               object[int(random(object.length))]+ ".";
             //  verb2syl[int(random(verb2syl.length))]+ ".";
  
  String sentenceq = modalVerbs[int(random(modalVerbs.length))] + " " +
                     names[int(random(names.length))] + " " +
                     infinitiveVerbs[int(random(infinitiveVerbs.length))] + " " +
                     objects_q[int(random(objects_q.length))]+"?" + " " ;
                     
  String sentence2 = subject[int(random(subject.length))]+ " " +
             //verb[int(random(verb.length ))]    +" "+
             conjugated_verbs[int(random(conjugated_verbs.length))] + " " +
             pluralNouns[int(random(pluralNouns.length))]+ "and" + " " +
             objects_q[int(random(objects_q.length))]+"." + " " +
             "#"+verb2syl[int(random(verb2syl.length))];
             
  push();
   
  fill(0);
  text (sentence1, i + 6 + loc + random (2, 9) , ii + 15 + loc+ random (2, 9), height/3.9, height/3.9 );
  
   pop();
   
   
   push();
   
   fill(0);
   textFont(icons1, 40);
   
   text (icons[int(random(icons.length))], i + 10 + loc + random (2, 9) , ii + 50 + loc+ random (2, 9), height/3.9, height/3.9 );
   
   pop();
   
   push();
   
   textSize(12);   
   fill(0);
   
    text (sentenceq + sentence2 , i + 6 + loc + random (2, 9) , ii + 90 + loc+ random (2, 9), height/3.9, height/3.9 );
    
 
    
    pop();
  
   }
  }
}


  
