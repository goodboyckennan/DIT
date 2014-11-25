class Dog extends Animal{
  
  
  Dog(){
    this(width/2, width/2);
    img = loadImage("dog.jpg");
    sound = minim.loadFile("bark.wav");
  }
  Dog(float x,float y){
    this.x = x;
    this.y = y;
    img = loadImage("dog.jpg");
    sound = minim.loadFile("bark.wav");
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
