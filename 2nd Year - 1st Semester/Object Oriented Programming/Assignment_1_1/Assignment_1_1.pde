Player player;
float boxSize;
int score,life;

void setup(){
  size(500,500);
  score = 0;
  life = 3;
  boxSize = width/10;
  
  player = new Player(0,height-(boxSize*2),boxSize,boxSize);
}

void draw(){
  background(255);
  
  player.display();
  displayFlowers();
}




void keyPressed(){
   if(key == 'a' || key == 'A'){
      player.moveLeft();
    }
    else if(key == 'd' || key == 'D'){
      player.moveRight();
    }
}

void displayFlowers(){
  
  PImage red_flower = loadImage("red_flower.png");
  PImage blue_flower = loadImage("blue_flower.png");
  PImage pink_flower = loadImage("pink_flower.png");
  PImage white_flower = loadImage("white_flower.png");
  
  image(red_flower,0,450);
  image(blue_flower,50,450);
  image(pink_flower,100,450);
  image(white_flower,150,450);
  image(red_flower,200,450);
  image(blue_flower,250,450);
  image(pink_flower,300,450);
  image(white_flower,350,450);
  image(red_flower,400,450);
  image(blue_flower,450,450);
}


