class Ship{
  
 float x, y;
 float w, h;
 
 Ship(){
   
 x = 250;
 y = 250;
 w = 20;
 h = 20;
   
 }
 
 void display(){     
  
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
      }else(key == 'a' || key == 'A'){
        x--;
      }else(key == 'd' key == ''){
        x++;
      }
    
 } 
}
