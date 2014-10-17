/*   Created: Sept. 24, 2014
     The block changes colour when 
     the mouse hovers on it if toggle=false
    
*/

void setup(){
  size(500,500);
  
}

float boxX = 0.3333;
float boxY = 0.3333;
boolean toggle = false;

int dx = 250;
int dy = 70;
int vx = 10;
int vy = 10;

void draw(){
 background(0);
  
  if(toggle){
     stroke(255,0,0);
    fill(255,0,0); 
  }else{
    if(mouseX >= width*boxX && mouseX <= width*(boxX*2) && mouseY >= height*boxY && mouseY <= height*(boxY*2)){
      fill(0,0,255);
      stroke(0,0,255);
    }
    else{
      fill(128);
      stroke(128);
    }
  }
  
  rect(width*boxX,height*boxY,width*boxX,height*boxY);
  
  
  stroke(255);
  fill(255);

  ellipse(dx,dy,40,40);
  
  dx+= vx;
  if(dx < 25 || dx > 475) vx = -vx;
  
  dy+= vy;
  if(dy < 25 || dy > 475) vy = -vy;
   
}

void mousePressed(){
  if(mouseX >= width*boxX && mouseX <= width*(boxX*2) && mouseY >= height*boxY && mouseY <= height*(boxY*2)){
    toggle = !toggle;
  }      
}
