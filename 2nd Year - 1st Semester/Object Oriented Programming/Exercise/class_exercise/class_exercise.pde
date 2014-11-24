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
  -inheritance
    * take codes that are common in 
*/

GameObject[] gameObjects;
Star star;
ArrayList<GameObject> objects = new ArrayList<GameObject>();
void setup(){
  
  gameObjects = new GameObject[6];
  size(500,500);
  
  gameObjects[0] = new Ship(100,100);
  gameObjects[1] = new Ship(200,200);
  gameObjects[2] = new Ship(400,400,20,20);
  
  
  star = new Star(200,200,5,50);
  gameObjects[3] = star;
  gameObjects[4] = new Bug();
  gameObjects[5] = new Bullet();
  
  
  
}

void draw(){
  background(0);
  
   for (int i = 0 ; i < gameObjects.length ; i ++)
  {
    gameObjects[i].move();
    gameObjects[i].display();
    // Use instance of to check to see if an instance is an instance of a particular class
    if (gameObjects[i] instanceof Star)
    {
      Star star = (Star) gameObjects[i];
      star.radius += 1;
    }
  }  
 
  
}


