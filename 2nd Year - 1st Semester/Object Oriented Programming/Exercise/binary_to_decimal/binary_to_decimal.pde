/*
  Created: October 6,2014
*/

void setup(){
  println(binaryToDecimal("10"));
}

int binaryToDecimal(String binary){
  int ret = 0;
 
 for(int i = 0; i < binary.length(); i++){
    char c = binary.charAt(i);
    if(c == '1'){  
      ret += pow(2,(binary.length() - 1) - i);
    } 
  }
  return ret;
}

