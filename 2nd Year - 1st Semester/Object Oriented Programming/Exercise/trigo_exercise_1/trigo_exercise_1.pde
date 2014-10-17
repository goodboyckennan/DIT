/*
  Created: October 6,2014
  
  calculate length of string of the kite, 
  height of the kite from the ground and the distance from the person.
  Draw a graph of it.
*/

void setup(){
  size(500,500);
  kiteHeight = sin(radians(theta)) * stringLength;
  kiteDistance = cos(radians(theta)) * stringLength;
  //radians() = divides by 180 and multiply by pi  
}

float kiteHeight,kiteDistance;
float stringLength = 176.0f;
float theta = 27.0f;
float startPointX = 100.0f;
float startPointY = 100.0f;
void draw(){
  background(0);
  stroke(255);
  fill(0);
  triangle(startPointX,startPointY,startPointX+kiteDistance,startPointY-kiteHeight,startPointX+kiteDistance,startPointY);
  
  
  fill(0,255,0);
  text(theta, startPointX+10,startPointY-5);
  
  text("Opposite: " + kiteHeight, startPointX+kiteDistance, startPointY - (kiteHeight/2));
  text("Adjacent: " + kiteDistance, startPointX + (kiteDistance/2), startPointY+10);
}


