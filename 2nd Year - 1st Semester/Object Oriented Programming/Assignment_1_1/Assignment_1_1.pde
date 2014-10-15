Boolean[] boxIsVisible = new boolean[10];
Box[] box = new Box[10];
float boxSize,score,life,boxSpeed,temp;
Player player;

void setup(){
  size(500,500);
  boxSize = width/10;
  score = 0;
  life = 3;
  boxSpeed = 1;
  temp = 1;
  
  player = new Player(0,420,boxSize,boxSize);
  for(int i = 0; i < box.length; i++){
    box[i] = new Box(i*boxSize,0,boxSize,boxSize);  
  }
 
}

void draw(){
  background(0);
  
  for(int i = 0; i < box.length; i++){
    box[i].display();
  }

  
  update();
  player.display();
}

void keyPressed(){
   if(key == 'a' || key == 'A'){
      player.moveLeft();
    }
    else if(key == 'd' || key == 'D'){
      player.moveRight();
    }
}

void update(){
    for(int i = 0; i < box.length; i++){
      box[i].yBox = box[i].yBox + boxSpeed;
    }    
}

class Player{
  
  String Name;
  float xPos;
  float yPos;
  float playerWidth;
  float playerHeight; 
  float speed = 2;
  
  //constructor
  Player(float xpos, float ypos, float w, float h){
    xPos = xpos;
    yPos = ypos;
    playerWidth = w;
    playerHeight = h;
  }   
  void moveLeft(){
    xPos = xPos - speed; 
  }
  void moveRight(){
      xPos = xPos + speed;
  }  
  void display(){
    fill(255);
    rect(xPos,yPos,playerWidth,playerHeight);
  } 
}

class Box{
  float xBox;
  float yBox;
  float boxWidth;
  float boxHeight;
  float boxSpeed = 1;

  Box(float x, float y,float w,float h){
    xBox = x;
    yBox = y;
    boxWidth = w;
    boxHeight = h;   
  } 
  void display(){
    fill(255,0,0);
    rect(xBox,yBox,boxWidth,boxHeight); 
  
    if(yBox > height){
      yBox = -boxHeight;
    }  
  }
  
  void update(){
    yBox = yBox + boxSpeed;
  }
}


