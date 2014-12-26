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
  -superclass
    *the class that is being extended by other class
  -subclass
    *classes that extends another class
  -override
  
*/

Star star;
ArrayList<GameObject> objects = new ArrayList<GameObject>();
void setup(){
  size(500,500);
  objects.add(new Ship(100,100));
  objects.add(new Ship(200,200));
  objects.add(new Star(100,100,50,5));
    
}

void draw(){
  background(0);
  
  for(int i = 0; i < 15; i++){
    stroke(255);
    line(0,i*50,width,i*50);
    line(i*50,0,i*50,height);
  }  
  
   for (int i = 0 ; i < objects.size() ; i++)
  {
   objects.get(i).move();
   objects.get(i).display();
  }

  
}


