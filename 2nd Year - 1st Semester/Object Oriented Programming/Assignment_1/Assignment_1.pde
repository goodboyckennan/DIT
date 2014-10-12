
int xPos,yPos,boxSize,life,score;

void setup(){
  size(500,500);  
  
  life = 3;
  xPos = 0;
  yPos = 400;
  boxSize = 50;
  score = 0;  

}

void draw(){
  background(0);
  
  fill(255);
  rect(xPos,yPos,boxSize,boxSize);
}

void keyPressed(){
  if(key == 'd' || key == 'D' && xPos <= (width-50)){
     xPos+=4;
  }
  else if(key == 'a' || key == 'A' && xPos >= 0){
     xPos-=4; 
  }
 
  
}
