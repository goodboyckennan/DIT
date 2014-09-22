/*
    move circle from left to right and vice versa.
    created Sept. 22,2014
*/

void setup(){
size(500,500);
}

int x = 1;

void draw(){
  background(0);
  fill(255);
  ellipse(x,100,100,100);
  ++x;  
}
