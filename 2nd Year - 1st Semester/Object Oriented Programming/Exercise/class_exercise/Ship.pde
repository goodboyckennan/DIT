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
  
  rotate(theta);   
  float halfWidth = w / 2;
  float halfHeight = h / 2;
    
  line(x - halfWidth, y + halfHeight, x, y - halfHeight);
  line(x, y - halfHeight, x + halfWidth, y + halfHeight);
  line(x + halfWidth, y + halfHeight, x, y);
  line(x, y, x - halfWidth, y + halfHeight); 
   
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
