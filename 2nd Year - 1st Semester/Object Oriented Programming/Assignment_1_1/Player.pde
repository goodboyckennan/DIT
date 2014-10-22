class Player{
  
  String Name;
  float xPos;
  float yPos;
  float playerWidth;
  float playerHeight; 
  float speed = 4;
  PImage playerUmbrella;
  
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
   playerUmbrella = loadImage("umbrella.png");
   
   image(playerUmbrella,xPos,yPos);
  } 
}
