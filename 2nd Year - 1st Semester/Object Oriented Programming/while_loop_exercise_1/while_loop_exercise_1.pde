void setup(){
  size(500,500);
}

void draw(){
  background(0);
  stroke(255);
  
  int x = 50;
  while(x <= width){    
    line(x,50,x,150);
    x+=50;
  }
}
