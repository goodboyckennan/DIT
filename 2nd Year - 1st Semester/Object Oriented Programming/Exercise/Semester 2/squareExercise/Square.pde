class Square{
 color colour;
 PVector pos;
 float w,h;
 
 Square(){
   //constructor chaining
   this(width/2,height/2,50,50,color(255,255,255)); 
 }
 
 Square(int x, int y, float w, float h, color c){
   pos = new PVector(x,y);
   this.w = w;
   this.h = h;
   this.colour = c;
 }
 
 void display(boolean high){
   float dim = 0;
   if(high){
     dim = 1;
   }else{
     dim = 0.5f;
   }
   stroke(colour * dim);
   fill(colour * dim);
   rect(pos.x,pos.y,w,h);
 }
}
