/*
   Created: Sept. 22, 2014
   change colour of a corner depending on where the mouse is.
*/

void setup (){
  size(500,500);
}

void draw(){  
  background(0);
  fill(255,0,0);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
  if(mouseX <= width/2 && mouseY <= height/2) rect(0,0,width/2,height/2);
  else if(mouseX > width/2 && mouseY <= height/2) rect(width/2,0,width/2,height/2);
  else if(mouseX <= width/2 && mouseY > height/2) rect(0,height/2,width/2,height/2);
  else if(mouseX > width/2 && mouseY > height/2) rect(width/2,height/2,width/2,height/2);
}
