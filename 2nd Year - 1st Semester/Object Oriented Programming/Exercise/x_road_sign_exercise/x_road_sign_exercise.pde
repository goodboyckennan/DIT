/*   Created: Sept. 29,2014

*/

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  stroke(255);
  
  int line1Y = 50;
  while(line1Y <= height){
    line(0,line1Y,width,line1Y);
    line1Y+=50; 
  }
  
   for(int line2x = 0;line2x <= width;line2x+=50){
     for(int line2y = 0;line2y <= height;line2y+=50){
        line(line2x,line2y,line2x+50,line2y+50);
        line(line2x+50,line2y,line2x,line2y+50);              
     }   
   }
}
