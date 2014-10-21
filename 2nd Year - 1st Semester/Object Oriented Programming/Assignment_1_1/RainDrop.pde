class RainDrop{
  float xDrop;
  float yDrop;
  float dropWidth;
  float dropHeight;
  boolean isVisible = false;
  PImage rainDrop;
  
  RainDrop(float x, float y, float w, float h){
    xDrop = x;
    yDrop = y;
    dropWidth = w;
    dropHeight = h;
  }
  void display(){
    rainDrop = loadImage("good_raindrop.jpg");    
    image(rainDrop,xDrop,yDrop);
    
    if(yDrop > height){
      yDrop = -yDrop;
       rain[(int)xDrop/ (int)dropWidth].isVisible = false;     
    }    
  }
}
