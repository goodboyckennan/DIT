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
  
  
  
  rect(width*boxX,height*boxY,width*boxX,height*boxY);


  ellipse(dx,dy,40,40);
  
  dx+= vx;
  if(dx < 25 || dx > 475) vx = -vx;
  
  dy+= vy;
  if(dy < 25 || dy > 475) vy = -vy;
   
}

void mousePressed(){
  if(toggle && mouseX >= width*boxX && mouseX <= width*(boxX*2) && mouseY >= height*boxY && mouseY <= height*(boxY*2)) fill(0,0,100);
  else fill(100,100,100);
  
  toggle = !toggle;
       
}
