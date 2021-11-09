String []textoEmLinhas;
String []texto2EmLinhas;
PFont myFont;

void setup() {
  //carrego uma fonte
myFont = createFont("Verdana",25);
  
  //array [] das linhas do texto
textoEmLinhas = loadStrings("biblia.txt");
texto2EmLinhas = loadStrings("darwin.txt");
//String [] fontList = PFont.list();
//printArray(fontList);
//printArray(textoEmLinhas);
 size(800,600);
 fill(0);  background(200);    
  textFont(myFont);  
  //escolhe uma linha qqr do texto
 // text(textoEmLinhas[int(random(textoEmLinhas.length))], 100, 100, 600,300);
 //text(texto2EmLinhas[int(random(texto2EmLinhas.length))], 100, 400, 600,300);

  //todo o texto numa linha (string) só 
  String textoTodo= join(textoEmLinhas, " ");
   String texto2Todo= join(texto2EmLinhas, " ");
  //um array de palavras  do txt
  String [] palavras = split(textoTodo, " ");
   String [] palavras2 = split(texto2Todo, " ");
  //print("número de linhas no texto:");
  //print(textoEmLinhas.length);
  // print("número de palavras:");  
  //print( palavras.length);
  
  fill (150, 80, 100);
  text(palavras[int(random(palavras.length))], 100, 300);
 text(palavras[int(random(palavras.length))], 100, 350);
  text(palavras[int(random(palavras.length))], 100, 400);
  

}

void draw() {//background(200);
int  i1=(random(textoEmLinhas.length));
int  i2=(random(texto2EmLinhas.length));

  if (n==0){
  text(textoEmLinhas[i1], 100, 100, 600,300);
 text(texto2EmLinhas[i2], 100, 400, 600,300);
 n=1;}
 
 if(keyPressed){
   background(200);
     text(textoEmLinhas[int(random(textoEmLinhas.length))], 100, 100, 600,300);
 text(texto2EmLinhas[int(random(texto2EmLinhas.length))], 100, 400, 600,300); }
  

}
