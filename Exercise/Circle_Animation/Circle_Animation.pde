/*
    move circle from left to right and vice versa.
    created Sept. 22,2014
*/

void setup(){
size(500,500);
fill(255);
}

int x = 25;
int x2 = 1;

void draw(){
  background(0);
  ellipse(x,height/2,100,100);
  x+=x2;
  if(x < 0 || x > width){
    x2 = -x2;
  }  
}
