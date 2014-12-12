class Board{
  float row;
  float col;
  
  Board(){
    this(10,10);
  }
  
  Board(float r,float c){
    this.row = r;
    this.col = c;
  }
  
  void display(){
    float rowGap = width/row;
    float colGap = height/col;
    
    println(rowGap,row,col,colGap);
    stroke(0);
      
    for(int i = 0; i < row; i++){
      for(int j = 0; j < col; j++){
        rect(rowGap*i,colGap*j,rowGap,colGap);
      }
    }
  }
}
