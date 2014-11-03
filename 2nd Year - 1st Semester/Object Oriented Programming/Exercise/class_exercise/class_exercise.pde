/*
  Words to keep in mind:
  - Class
  - Encapsulation
  - Constructor
  - instance
  - object
  - method
  - field
  - garbage collection - finds unused data and removes it to free up space

*/

Ship ship1,ship2,ship3;

void setup(){
  
  size(500,500);
  ship1 = new Ship(100,100);
 // ship2 = new Ship(200,200);
  //ship3 = new Ship(100,100,60,70);
  
}

void draw(){
  background(0);
  stroke(255);
  
  ship1.move();
  ship1.display();
  
  //ship2.move();
  //ship2.display();
  
  //ship3.move();
  //ship3.display();
}


