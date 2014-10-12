
int xPos,yPos,boxSize,boxNo,life,score,xBox,yBox;
int[] box = new int[10];


void setup(){
  size(500,500);  
  
  xBox = 0;
  yBox = 0;
  life = 3;
  score = 0;
  xPos = 0;
  yPos = 400;
  boxSize = width/box.length;
  

}

void draw(){
  background(0);
  

  
  fill(255);
  rect(xPos,yPos,boxSize,boxSize);
  

  text(xPos,width/2,100);
  
}

void keyPressed(){
  if(key == 'd'){
     xPos+=2;
  }
  else if(key == 'a'){
     xPos-=2; 
  } 
  
}


