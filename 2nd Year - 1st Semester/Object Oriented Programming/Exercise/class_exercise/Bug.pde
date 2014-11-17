class Bug extends GameObject{
  float size;
  
  Bug(float xPos, float yPos, float size){
    this.x = xPos;
    this.y = yPos;
    this.size = size;
  }
  Bug(){
    this(width/2,height/2,1);
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    
    
    
    popMatrix();
  }
  
  void move(){
  
  }
}
