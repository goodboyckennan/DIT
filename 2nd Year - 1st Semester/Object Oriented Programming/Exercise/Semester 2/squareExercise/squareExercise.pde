ArrayList<Square> s = new ArrayList<Square>();
ArrayList<Integer> sequence = new ArrayList<Integer>();


float w,h;
void setup(){
  size(500,500);
  w = width/2;
  h = height/2;
  
  s.add(new Square(0,0,color(0,255,0)));
  s.add(new Square(w,0,color(255,0,0)));
  s.add(new Square(0,h,color(0,0,255)));
  s.add(new Square(w,h,color(255,255,0)));
  
  addSequence();
  addSequence();
  addSequence();
  addSequence();
  printSequence();
}

int count = 0;
void draw(){
  background(0);  
  for(int i = 0; i < s.size(); i++){
    s.get(i).display(false);
  }
  
  if(frameCount % 30 == 0 && count < sequence.size()){
      s.get(sequence.get(count).intValue()).display(true);      
    count++;
  }
}

void addSequence(){
  sequence.add(new Integer((int) random(0,4)));
}

void printSequence(){
  println(sequence);
}
