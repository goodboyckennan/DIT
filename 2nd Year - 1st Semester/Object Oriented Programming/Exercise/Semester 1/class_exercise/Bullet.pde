class Bullet extends GameObject
{
  Bullet()
  {
    position.x = width / 2;
    position.y = height / 2;
  }
  
  void move()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    float speed = 10.0f;
    
    PVector velocity = PVector.mult(forward,speed);
    position.add(forward);
    
  }
  
  void display()
  {
    pushMatrix();
    translate(position.x,position.y);
    rotate(theta);
    line(0, - 5, 0, 5);
    popMatrix();
  }
}
