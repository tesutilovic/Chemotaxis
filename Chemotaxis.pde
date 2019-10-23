Bacteria [] hello = new Bacteria[10];

 void setup()   
 {
 size (500, 500);
 background (255);
 for (int i = 0; i<10; i++){
   hello[i]=new Bacteria();
 }
 }   
 void draw()   
 {   
   background (255);
 	 for (int i = 0; i<10; i++){
   hello[i].show();
   hello[i].move();
 }
 }  
 class Bacteria    
 {     
 	int x, y, col;
  Bacteria(){
    x = 250;
    y = 250;
    col = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show(){
    fill (col);
    ellipse (x, y, 5, 5);   
  }
  void move(){
    x = x + (int)(Math.random()*-5+2.5);
    y = y + (int)(Math.random()*-5+2.5);
  }
 }    