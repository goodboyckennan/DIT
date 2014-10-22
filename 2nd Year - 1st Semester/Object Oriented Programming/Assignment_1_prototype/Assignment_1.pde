Player player;
float boxSize,score,life,boxSpeed,temp;

Box[] box = new Box[10];

void setup(){
  size(500,500);
  boxSize = width/10;
  score = 0;
  life = 3;
  boxSpeed = 1;
  temp = 0;
  
  player = new Player(0,height-boxSize,boxSize,boxSize);
  for(int i = 0; i < box.length; i++){
    box[i] = new Box(i*boxSize,0,boxSize,boxSize);  
  }
 
}

void draw(){
  background(0);
  if(temp%50 == 0){
    int r = (int)random(10);
   
    box[r].isVisible = true;
    temp = 1;
  }else{
    temp++;
  }
  
    for(int i = 0; i < box.length; i++){
      if(box[i].isVisible == true){
          box[i].display();
      }
    }
  player.display();
  
  update();
  displayScoreAndLife();
}

void keyPressed(){
   if(key == 'a' || key == 'A'){
      player.moveLeft();
    }
    else if(key == 'd' || key == 'D'){
      player.moveRight();
    }
}

void displayScoreAndLife(){
  fill(0,255,0);
  textAlign(CENTER);
  text("Life: " + (int)life, width-35,10);
  
  textAlign(CENTER);
  text("Score: " + (int)score, width-30,20);
}

void update(){
    for(int i = 0; i < box.length; i++){
      if(box[i].isVisible == true){
        
          //box collision
          if(box[i].xBox+boxSize > player.xPos && box[i].xBox < player.xPos+boxSize && box[i].yBox+boxSize > player.yPos){
             box[i].isVisible = false;
             life--;
          }
         
        
        box[i].yBox = box[i].yBox + boxSpeed;
      }
    }    
}




