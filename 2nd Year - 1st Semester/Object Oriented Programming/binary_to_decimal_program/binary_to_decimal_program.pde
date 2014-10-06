
float posX,posY,size,decimalValue;
boolean toggle;

void setup(){
size(500,500);


 posX = 50.0f;
 posY = height/2;
 size = 50.0f;
 toggle = false;
 decimalValue = 0;
}

void draw(){
   background(0); 
  
   //1st rect  
   if(toggle && mouseX >= posX && mouseX <= (posX*2) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + pow(2,7);
     toggle = !toggle;    
   }
   rect(posX,posY,size,size);
   
   //2nd rect
   if(toggle && mouseX > posX*2 && mouseX <= (posX*3) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + pow(2,6);
     toggle = !toggle;
   }
   rect(posX*2,posY,size,size);
  
   //3rd rect   
   if(toggle && mouseX > posX*3 && mouseX <= (posX*4) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + pow(2,5);
     toggle = !toggle;
   }
   rect(posX*3,posY,size,size);
  
   //4th rect
   if(toggle && mouseX > posX*4 && mouseX <= (posX*5) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + pow(2,4);
     toggle = !toggle;
   }
   rect(posX*4,posY,size,size);
 
   //5th rect
   if(toggle && mouseX > posX*5 && mouseX <= (posX*6) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + pow(2,3);
     toggle = !toggle;
   }
   rect(posX*5,posY,size,size);
 
   //6th rect
   if(toggle && mouseX > posX*6 && mouseX <= (posX*7) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + pow(2,2);
     toggle = !toggle;
   }
   rect(posX*6,posY,size,size);
  
   //7th rect
   if(toggle && mouseX > posX*7 && mouseX <= (posX*8) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + pow(2,1);
     toggle = !toggle;
   }
   rect(posX*7,posY,size,size);
 
   //8th rect
   if(toggle && mouseX > posX*8 && mouseX <= (posX*9) && mouseY >= posY && posY <= (posY+50)){
     fill(0,0,255);
     decimalValue = decimalValue + 1;
     toggle = !toggle;
   }
   rect(posX*8,posY,size,size);
   
   
   //textField code here
   fill(255);
   textAlign(CENTER,TOP);
   text("Decimal Value: " + decimalValue,width/2,height/4);


}

void mousePressed(){
    if(mouseX >= posX && mouseX <= posX*8 && mouseY >= posY && mouseY <= posY+50){
     toggle = !toggle; 
    }
}
