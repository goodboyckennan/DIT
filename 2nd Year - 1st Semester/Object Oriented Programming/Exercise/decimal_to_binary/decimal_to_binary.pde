/*
  Created: October 6,2014
  
  Converts Decimal to Binary
*/

void setup(){
 
 println(decimalToBinary(4));
  
}

String decimalToBinary(int decimal){
  
    String ret = ""; 
    /* 
      Alternative: ret = binary(decimal,8);
    */
    while(decimal != 0){
      ret = (decimal % 2) + ret;
      decimal = decimal / 2;
    }    
    return ret;   
}
