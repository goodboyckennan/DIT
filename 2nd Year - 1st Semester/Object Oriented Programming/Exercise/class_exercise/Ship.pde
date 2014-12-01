class Ship extends GameObject{
  
 float w = 20;
 float h = 20;
 float fireRate = 5;
 
 Ship(){  
   position.x = 250;
   position.y = 250;
   w = 20;
   h = 20; 
   colour = color(255);  
 }
 
 Ship(float x, float y){
   position.x = x;
   position.y = y;
   colour = color(255);  
 }
 
 Ship(float x, float y, float w, float h){
   position.x = x;
   position.y = y;
   this.w = w;
   this.h = h;
   colour = color(255);  
 }
 
 void display(){ 
  
  pushMatrix(); 
  translate(position.x,position.y);
  rotate(theta);

  stroke(colour);  
  float halfWidth = w / 2;
  float halfHeight = h / 2;

    
  line(-halfWidth, halfHeight,0, - halfHeight);
  line(0,  - halfHeight, halfWidth,  halfHeight);
  line(halfWidth,  halfHeight, 0, 0);
  line(0,0,  - halfWidth,  halfHeight); 
  popMatrix(); 
   
 }
 
 void move(){
    forward.x = sin(theta);
    forward.y = -cos(theta);
    if (keyPressed)
    {
      switch (key)
      {
        case 'w':
          position.add(forward);
          break;
        case 's':
          position.sub(forward);
          break;
        case 'a':
          theta -= 0.1f;
          break;
        case 'd':
          theta += 0.1f;
          break;  
        case ' ':
          Bullet bullet = new Bullet();
          bullet.position = position.get();
          bullet.theta = theta;
          int count = 0;
          
            objects.add(bullet);   
             count++;  
      }
    }
  }
}
