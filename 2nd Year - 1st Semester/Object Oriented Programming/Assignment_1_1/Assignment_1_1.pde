Player player;
RainDrop[] rain = new RainDrop[20];
float playerSize,boxSize;
int score,life,boxSpeed,count;

void setup(){
  size(500,500);
  score = 0;
  life = 3;
  boxSpeed = 1;
  playerSize = width/10;
  boxSize = width/20;
  count = 1;
  
  player = new Player(0,height-(playerSize*2),playerSize,playerSize);
  for(int i = 0; i < rain.length; i++){
    rain[i] = new RainDrop(i*boxSize,0,boxSize,boxSize);
  }
}

void draw(){
 background(255);
  
  if(count % 40 == 0){
    int r = (int)random(20);
   
    rain[r].isVisible = true;
    count = 1;
  }else{
    count++;
  }
  
  for(int i = 0; i < rain.length; i++){
    if(rain[i].isVisible == true){
      rain[i].display();
    //check drop x coordinate
      println(rain[i].xDrop);
    }
  }
  
  player.display();
  update();
  displayFlowers();
}

void update(){
  for(int i = 0; i < rain.length; i++){
   
    if(rain[i].isVisible == true){
      rain[i].yDrop = rain[i].yDrop + boxSpeed;
      //Box collision code here
      if(rain[i].xDrop+boxSize > player.xPos && rain[i].xDrop < player.xPos+playerSize && rain[i].yDrop+boxSize > player.yPos){
        rain[i].yDrop = 0;
        rain[i].isVisible = false;
        life--;
      }
      
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
 
  image(red_flower,0,450);
  image(blue_flower,50,450);
  image(pink_flower,100,450);
  image(red_flower,150,450);
  image(blue_flower,200,450);
  image(pink_flower,250,450);
  image(red_flower,300,450);
  image(blue_flower,350,450);
  image(pink_flower,400,450);
  image(red_flower,450,450);
}


