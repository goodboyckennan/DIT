void setup(){
  size(500,500);
}

void draw(){
  background(0);
  
  
  int line2Y = height/2;
  int gap = 1;
  
  while(line2Y <= height){
    stroke(255,255,0);
    line(0,line2Y,width,line2Y);
   
    line2Y+= gap;
    gap++;
  }
  
  int line1X = 10;
  while(line1X <= width){   
     stroke(255,255,0); 
    line(width/2,height/2,line1X,height);
    line1X+=10;
  }
  
  
}
