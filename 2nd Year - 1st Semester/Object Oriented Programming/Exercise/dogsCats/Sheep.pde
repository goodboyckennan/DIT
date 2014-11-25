class Sheep extends Animal{

  Sheep(){
    this(width/2, width/2);
    img = loadImage("sheep.jpg");
    sound = minim.loadFile("bleet.wav");    
  }
  Sheep(float x,float y){
    this.x = x;
    this.y = y;
    img = loadImage("sheep.jpg"); 
   sound = minim.loadFile("bleet.wav");   
  }
  
  void speak(){
    sound.play();
    sound.rewind();
  }

  void display(){
    
    img.resize(100,100); 
    image(img,x,y);

  } 

}
