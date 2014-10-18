class Player{
  
  String Name;
  float xPos;
  float yPos;
  float playerWidth;
  float playerHeight; 
  float speed = 1;
  
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
