ArrayList<Square> s = new ArrayList<Square>();

void setup(){
  size(500,500);
  float w = width/2;
  float h = height/2;
  
  s.add(new Square(0,0,w,h,color(255,0,0)));
  s.add(new Square(width/2,0,w,h,color(0,255,0)));
  s.add(new Square(0,height/2,w,h,color(255,255,0)));
  s.add(new Square(width/2,height/2,w,h,color(0,0,255)));
}

void draw(){
  background(0);
  
  for(int i = 0; i < s.size(); i++){
    s.get(i).display();
  }
}
