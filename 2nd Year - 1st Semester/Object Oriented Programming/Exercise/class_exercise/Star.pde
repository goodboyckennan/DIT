class Star extends GameObject{
float points,radius;

  
 Star(){
   this(width/2,height/2,5,50); 
 } 
 Star(float xPos, float yPos, float points, float radius){
   
   this.x = xPos;
   this.y = yPos;
   this.points = points;
   this.radius = radius; 
   this.theta = 0;
 }
 
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotate(theta);
    
    float theta1 = 0;
    float thetaInc = TWO_PI/(points*2);
    float px,py;
    float lastx= 0;
    float lasty = -radius;
    
    for(int i = 1; i <= (points*2); i++){
      theta1 += thetaInc;
      if(i % 2 == 0){
        px = sin(theta1) * radius;
        py = -cos(theta1) * radius;
      }else{
        px = sin(theta1) * (radius * 0.5f);
        py = -cos(theta1) * (radius * 0.5f); 
      }  
      line(lastx,lasty,px,py);
      lastx = px;
      lasty = py;
      
    }
    
    popMatrix();
  }
  
  void move(){
    theta+= 0.01f;
  }



}
