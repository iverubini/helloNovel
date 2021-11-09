PFont miF;
String [] sustantivo = {"Extinção", "Amor", "Dor", "Esquecimento"};
String [] verbo      = {"é", "era", "será", "foi", "não é" };
String [] artigo     = {"uma", "a" , "algo como uma"};
String [] adjetivo   = {"aparência", "carga espantosa", "barra pessada", "jornada cícliaca"};


void setup(){
  size(600,300);  background(255);
  miF = createFont("Vrinda",60);
String[] fontList = PFont.list();  //faz um array (lista) das fontes disponíveis 
printArray(fontList); //imprime no console
  fill(0);
  textFont(miF,30);
    escrita(); 
}
void draw(){
if(frameCount> 300){  frameCount=0;
  background(255,frameCount);
  escrita(); 
  background(255,255-frameCount);
  frameCount=0;
}
}
//void keyPressed(){}
  
void escrita(){
  String frase = sustantivo[int(random(sustantivo.length))]+" "+
                      verbo[int(random(verbo.length ))]    +" "+
                     artigo[int(random(artigo.length))]    +" "+
                   adjetivo[int(random(sustantivo.length))]+".";
  text( frase, 40,100);
  
}
