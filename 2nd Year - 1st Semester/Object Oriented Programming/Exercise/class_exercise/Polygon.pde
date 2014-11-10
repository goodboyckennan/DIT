class Polygon{
  float x,y,sides,radius;
  
 Polygon(){
   this(width/2,height/2,100,5); 
 } 
 Polygon(float xPos, float yPos, float sides, float radius){
   
   this.x = xPos;
   this.y = yPos;
   this.sides = sides;
   this.radius = radius; 
 }
 
  
  void display(){
    pushMatrix();
    translate(x,y);
    
    float theta = 0;
    float thetaInc = TWO_PI/sides;
    float px,py;
    float lastx= 0;
    float lasty = radius;
    
    for(int i = 1; i <= sides; i++){
      theta = i* thetaInc;
      px = sin(theta) * radius;
      py = cos(theta) * radius;
 
      line(lastx,lasty,px,py);
      lastx = px;
      lasty = py;
      
    }
    
    popMatrix();
  }
  
  void move(){
  
  }

}
