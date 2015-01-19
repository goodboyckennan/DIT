class Cat extends Animal{
  
  Cat(){
    this(width/2, width/2);
    img = loadImage("cat.jpg");
    sound = minim.loadFile("meow.wav");
     
  }
  Cat(float x,float y){
    this.x = x;
    this.y = y;
    img = loadImage("cat.jpg");
    sound = minim.loadFile("meow.wav");
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
