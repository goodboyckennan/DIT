void setup(){
  size(500,500);
  centX = width/2;
  centY = height/2;
}

int centX;
int centY;

void draw(){  
  float segments = 8;
  float thetaInc = TWO_PI/ segments;
  float theta = 0;
  float radius = 100;
 
  background(0,255,255);
  
  fill(255);
  stroke(0);
  ellipse(centX,centY,400,400);
  
  while(theta < TWO_PI){
    fill(0,255,0);
    
     float x;
     float y;
     x = centX + sin(theta) * radius;
     y = centX + cos(theta) * radius;
     stroke(0,255,0);
     ellipse(x,y,100,100);
     
     theta+=thetaInc;
    }
    
    fill(255,0,0);
    stroke(255,0,0);
    ellipse(centX,centY,150,150);
  
}
