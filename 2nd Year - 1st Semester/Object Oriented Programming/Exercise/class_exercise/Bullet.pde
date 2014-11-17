class Bullet extends GameObject{
  
  Bullet(){
    this(width/2,height/2,);
  }

  void display(){
    pushMatrix();
    translate(x,y);
    rotate(theta);
    line(0,-5,0,5);
    popMatrix();
  }
  
  void move(){
  
  }
}
