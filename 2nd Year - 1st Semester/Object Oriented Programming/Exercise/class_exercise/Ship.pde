class Ship{
  
 float x, y;
 float w = 20;
 float h = 20;
 float theta = 0;
 
 Ship(){  
   x = 250;
   y = 250;
   w = 20;
   h = 20;   
 }
 
 Ship(float x, float y){
   this.x = x;  
   this.y = y;
 }
 
 Ship(float x, float y, float w, float h){
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
 }
 
 void display(){ 
  
  translate(x,y);
  rotate(theta);   
  float halfWidth = w / 2;
  float halfHeight = h / 2;
  
  /*
    
  */
    
  line(-halfWidth, halfHeight,0, - halfHeight);
  line(0,  - halfHeight, halfWidth,  halfHeight);
  line(halfWidth,  halfHeight, 0, 0);
  line(0,0,  - halfWidth,  halfHeight); 
   
 }
 
 void move(){
    if(keyPressed){
      if(key == 'w' || key == 'W'){
        y--;
      }else if(key == 's' || key == 'S'){
        y++;
      }else if(key == 'a' || key == 'A'){
        theta -= 0.1f;
      }else if(key == 'd'  || key == 'D'){
        theta += 0.1f;
      }
    
   } 
  }
}
