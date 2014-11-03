Ship ship;

void setup(){
  
  size(500,500);
  ship = new Ship();
  
}

void draw(){
  background(0);
  stroke(255);
  
  ship.move();
  ship.display();
}


