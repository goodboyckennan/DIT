/*  First Programming done since moving to DIT
    done on September 19, 2014
*/

size(1000,1000);
background(0);
fill(0);

boolean smile = true;

for(int y = 0; y < height; y+=100){
  for(int x = 0; x <  width; x+=100){
    stroke(255,255,0);
    ellipse(x+50,y+50,100,100); 
    ellipse(x+30,y+30,10,10); //left eye
    ellipse(x+70,y+30,10,10); //right eye 
    ellipse(x+50,y+50,10,10); // nose
    line(x+40,y+75,x+60,y+75); // lips
    
    if(smile){
      // happy mouth
      line(x+30,y+65,x+40,y+75);
      line(x+60,y+75,x+70,y+65);
    }else{
      // sad mouth
      line(x+30,y+85,x+40,y+75);
      line(x+60,y+75,x+70,y+85);
    }
    smile = !smile;
  }
  smile = !smile;
}

