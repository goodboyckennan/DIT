class Ship extends GameObject{
  
 float w = 20;
 float h = 20;
 float fireRate = 5;
 
 Ship(){  
   x = 250;
   y = 250;
   w = 20;
   h = 20; 
   colour = color(255);  
 }
 
 Ship(float x, float y){
   this.x = x;  
   this.y = y;
   colour = color(255);  
 }
 
 Ship(float x, float y, float w, float h){
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   colour = color(255);  
 }
 
 void display(){ 
  
  pushMatrix(); 
  translate(x,y);
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
   float lx, ly;
    lx = sin(theta);
    ly = -cos(theta);
    if (keyPressed)
    {
      switch (key)
      {
        case 'w':
          x = x + lx;
          y = y + ly;
          break;
        case 's':
          y = y + 1;
          break;
        case 'a':
          theta -= 0.1f;
          break;
        case 'd':
          theta += 0.1f;
          break;  
        case ' ':
          Bullet bullet = new Bullet();
          bullet.x = x;
          bullet.y = y;
          bullet.theta = theta;
          int count = 0;
           if((frameRate/fireRate) = count ){
            objects.add(bullet);   
           }else{
             count++;
           }   
      }
    }
  }
}
