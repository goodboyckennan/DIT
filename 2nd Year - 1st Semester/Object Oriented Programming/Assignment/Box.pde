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
      yBox = -yBox;
    }
    
  }
  
  void update(){
    yBox = yBox + boxSpeed;
  }
}

