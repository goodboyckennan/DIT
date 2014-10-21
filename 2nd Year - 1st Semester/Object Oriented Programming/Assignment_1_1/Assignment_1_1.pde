Player player;
RainDrop[] rain = new RainDrop[10];
float boxSize;
int score,life,boxSpeed,count;

void setup(){
  size(500,500);
  score = 0;
  life = 3;
  boxSpeed = 1;
  boxSize = width/10;
  count = 1;
  
  player = new Player(0,height-(boxSize*2),boxSize,boxSize);
  for(int i = 0; i < rain.length; i++){
    rain[i] = new RainDrop(i*boxSize,0,boxSize,boxSize);
  }
}

void draw(){
  background(255);
  
  if(count%70 == 0){
    int r = (int)random(10);
   
    rain[r].isVisible = true;
    count = 1;
  }else{
    count++;
  }
  
  for(int i = 0; i < rain.length; i++){
    if(rain[i].isVisible == true){
      rain[i].display();
    }
  }
  
  player.display();
  update();
  displayFlowers();
}

void update(){
  for(int i = 0; i < rain.length; i++){
   
    if(rain[i].isVisible == true){
      //Box collision code here
      if(rain[i].xDrop+boxSize > player.xPos && rain[i].xDrop < player.xPos+boxSize && rain[i].yDrop+boxSize > player.yPos){
        rain[i].isVisible = false;
        life--;
      }
      rain[i].yDrop = rain[i].yDrop + boxSpeed;
    }
    
    
    
  }
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


