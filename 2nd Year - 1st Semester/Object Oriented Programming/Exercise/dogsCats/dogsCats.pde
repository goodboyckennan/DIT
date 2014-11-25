import ddf.minim.*;
Animal[] animal;

void setup() {
  size(500, 500);
  animal = new Animal[3];
  
  animal[0] = new Cat(50,50);
  animal[1] = new Dog(200,50);
  animal[2] = new Sheep(350,50);
}
+
void draw(){
  background(0);
  
   for (int i = 0 ; i < animal.length ; i ++)
  {
    animal[i].display();
    animal[i].speak();  
  }   
}
