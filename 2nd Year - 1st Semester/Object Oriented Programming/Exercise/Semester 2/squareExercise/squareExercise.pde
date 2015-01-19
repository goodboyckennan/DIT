ArrayList<Square> s = new ArrayList<Square>();

void setup(){
  size(500,500);
  float w = width/2;
  float h = height/2;
  
  s.add(new Square(0,0,w,h,color(0,255,0)));
  s.add(new Square(w,0,w,h,color(255,0,0)));
  s.add(new Square(0,h,w,h,color(0,0,255)));
  s.add(new Square(w,h,w,h,color(255,255,0)));
}

void draw(){
  background(0);
  
  for(int i = 0; i < s.size(); i++){
    s.get(i).display();
  }
}
