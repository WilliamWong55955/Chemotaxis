//declare bacteria variables here  
 int xX, yY = 0;
 Bacteria[] Wilbert;
 void setup()   
 {  
  size(300,300);
  background(0);
  Wilbert = new Bacteria[10];
  for(int i = 0; i<Wilbert.length;i++){
    Wilbert[i] = new Bacteria();
  }
   //initialize bacteria variables here   
 }  
 void mousePressed()
 {
   redraw();
 }
 void draw()   
 {   
   background(0);
   for(int a = 0; a<Wilbert.length; a++){
     Wilbert[a].move();
     Wilbert[a].show();
   }
   //move and show the bacteria   
 }  
 class Bacteria    
 {   
   int size ,a, xX, yY;
   Bacteria()
   {
     a = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); 
     size = (int)(Math.random()*40+20);
     xX=(int)(Math.random()*301);
     yY=(int)(Math.random()*301);
   }
   void move(){
     xX=xX+(int)((Math.random()*6)-3);
     yY=yY+(int)((Math.random()*6)-3);
   }
   void show(){
     fill(a);
     ellipse(xX, yY, size, size);   
   }
   //lots of java!   
 }
