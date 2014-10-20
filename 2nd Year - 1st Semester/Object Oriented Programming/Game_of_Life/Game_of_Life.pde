/*  Game of Life
    Created: October 20,2014
  
    RULES:
    1. if <2 neighbours, the cell dies due to loneliness.
    2. if 2 or 3 neighbours, the cell lives.
    3. if >3 neighbours, the cell dies due to overcrowding.
    4. if cell is DEAD and has EXACTLY 3 neighbours, the cell comes back to life.
*/

boolean[][] board;
int cellWidth = 5;
int cellHeight = 5;
int boardWidth;
int boardHeight;

void setup(){
  size(500,500);
  boardWidth = width/cellWidth;
  boardHeight = height/cellHeight;
  board = new boolean[boardHeight][boardWidth];
  
  board[0][3] = true;
  board[3][4] = true;
}

void draw(){
  background(0);

  
  for(int row = 0; row < boardHeight; row++){
    for(int col = 0; col < boardWidth; col++){
      int x = cellWidth * col;
      int y = cellHeight * row;
      if(board[row][col]){
        fill(0,255,0);
        rect(x,y,cellWidth,cellHeight);
      }else{
        fill(0);
      }
    }
  }  
}

int countNeighbours(int row, int col){
  int neighbour = 0;
  //top left
  if( row > 0  && col > 0 && board[row - 1][col - 1] == true){
    neighbour += 1;
  }
  //top
  if(row > 0 && board[row-1][col] == true){
    neighbour += 1;
  }
  //top right
  if(row > 0 && col < boardWidth-1 && board[row-1][col+1] == true){
    neighbour += 1;
  }
  //left
  if(col > 0 && board[row][col-1] == true){
    neighbour += 1;
  }
  //right
  if(col < boardWidth-1 && board[row][col+1] == true){
    neighbour += 1;
  }
  //bottom left
  if(row < boardHeight-1 && col > 0 && board[row+1][col-1] == true){
    neighbour += 1;
  }
  //bottom
  if(row < boardHeight-1 && board[row+1][col] == true){
    neighbour += 1;
  }
  //bottom right
  if(row < boardHeight-1 && col < boardWidth-1 && board[row+1][col+1] == true){
    neighbour += 1;
  }
  return neighbour;
}

void update(){
    for(int row = 0; row < boardHeight; row++){
      for(int col = 0; col < boardWidth; col++){
        int neighbours = countNeighbours(row,col);
        
        if(board[row][col]){
          if( neighbours < 2){
            board[row][col] = false;
          }else if(neighbours == 2 || neighbours == 3){
            board[row][col] = true;
          }else if(neighbours > 3 ){
            board[row][col] = false;
          }
        }else{
          if(neighbours == 3){
            board[row][col] = true;
          }
        }
      }
    }
}

void randomise(){

}


