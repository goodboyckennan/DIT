Player player;
float boxSize,score,life;

void setup(){
  size(500,500);
  boxSize = width/10;
  score = 0;
  life = 3;
  
  player = new Player(0,420,boxSize,boxSize);
}

void draw(){
  background(0);
  
  
  player.display();
}

void keyPressed(){
   if(key == 'a' || key == 'A'){
      player.moveLeft();
    }
    else if(key == 'd' || key == 'D'){
      player.moveRight();
    }
}

