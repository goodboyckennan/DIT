/*
  Words to keep in mind:
  - Class
     * template of an object
  - method
  - field
  - Encapsulation
  - Constructor 
     * called when an instance of an object is created.
     * same name as the class
     * takes in parameters
  - instance
  - object
  - garbage collection 
     *finds unused data and removes it to free up space
  -reference
  -translate
    * takes in x,y parameters
  - constructor chaining
    * calling another constucto
  
*/

Ship ship1,ship2;
Polygon p;
Bug bug;

void setup(){
  
  size(500,500);
  ship1 = new Ship(100,100);
  ship2 = new Ship(200,200);
  bug = new Bug(300,300,3);
  p = new Polygon(400,400,5,50);
  
  
}

void draw(){
  background(0);
  stroke(255);
  
  ship1.move();
  ship1.display();
  
  
  ship2.move();
  ship2.display();
  
  p.display();
  p.move();
  
  bug.display();
  
}


