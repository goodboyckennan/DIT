package ie.dit.matrix2D;

public class Matrix{
	private int row,col;
	private float[][] cell;
	
	Matrix(int row, int col){
		this.row = row;
		this.col = col;
		cell = new float[row][col];
	}
	
	Matrix(){
		this(5,5);
		cell = new float[5][5];
	}
	
	public String toString(){
		String ret = "";
		for(int r = 0; r < row; r++){
			for(int c = 0; c < col; c++){
					ret += getCell(r,c) + " ";
			}
			ret += "\n";
		}
		return ret;
	}
	
	public static Matrix add(Matrix a, Matrix b){
		Matrix c = new Matrix(a.getRows(),a.getCols());
		
		for(int row = 0; row < a.getRows(); row++){
			for(int col = 0; col < a.getCols(); col++){
				c.setCell(row,col,a.getCell(row,col) + b.getCell(row,col));
			}
		}
		return c;
	}
	
	public void identity(){
		for(int r = 0; r < row; r++){
			for(int c = 0; c < col; c++){
					//in line if
					setCell(r,c,(r == c) ? 1:0);
			}
		}
	}
	
	public int getRows(){
		 return row;
	}
	
	public int getCols(){
		return col;
	}
	
	public float getCell(int row, int col){
		return cell[row][col];
	}
	
	public void setCell(int row, int col, float value){
		cell[row][col] = value;
	}
}