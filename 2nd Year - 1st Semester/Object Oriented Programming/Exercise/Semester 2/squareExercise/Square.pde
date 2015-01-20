class Square{
 color colour;
 PVector pos;
 
 Square(){
   //constructor chaining
   this(width/2,height/2,color(255,255,255)); 
 }
 
 Square(float x, float y, color c){
   pos = new PVector(x,y);
   this.colour = c;
 }
 
 void display(boolean high){
   float dim = 0;
   if(high){
     dim = 1;
   }else{
     dim = 0.5f;
   }
   noStroke();
   fill(red(colour) * dim,green(colour) * dim,blue(colour) * dim);
   rect(pos.x,pos.y,w,h);
 }
}
