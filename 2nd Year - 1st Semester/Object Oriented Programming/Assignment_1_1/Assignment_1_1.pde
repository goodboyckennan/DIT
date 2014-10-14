Player player;
Box[] box = new Box[10];
int boxSize,score,life,boxSpeed;

void setup(){
  size(500,500);
  boxSize = width/10;
  score = 0;
  life = 3;
  boxSpeed = 1;

  player = new Player(10,500,3,0);
  /*
  make for loop to create instance of Box class 
  w/ their corresponding x,y coordinate
  
  for(int i = 0; i < box.length; i++){
    box[i].setXBox(boxSize*i);
    box[i].setYBox(boxSize*i);
  }
  */
}

void draw(){
  background(0);
  
  
  fill(255);
  rect(player.getXPos(),player.getYPos(),boxSize,boxSize);
  
  text(player.getXPos(),width/2,100);
}

void keyPressed(){
  if(key == 'd' || key == 'D'){
     player.moveRight();
  }
  else if(key == 'a' || key == 'A'){
     player.moveLeft();
  } 
  
}

class Player{
  
  String Name;
  int xPos = 0;
  int yPos = 400;
  int speed = 1;
  
  //constructor
  Player(int xpos, int ypos, int Life, int Score){
    
    xpos = xPos;
    ypos = yPos;
  } 
  void setName(String name){
    name = Name;
  }
  void setSpeed(int Speed){
    Speed = speed;
  }
  
  //getters
  String getName(){
    return Name;
  }
  int getXPos(){
    return xPos;
  }
  int getYPos(){
    return yPos;
  }
  int getSpeed(){
    return speed;
  }
  
  void moveLeft(){
    xPos = xPos - speed; 
  }
  void moveRight(){
      xPos = xPos + speed;
  }

  
}

class Box{
  int xBox;
  int yBox;
  
  void setXBox(int x){
    x = xBox;
  }
  void setYBox(int y){ 
  }
  
  int getXBox(){
    return xBox;
  }
  int getYBox(){
    return yBox;  
  }

}


