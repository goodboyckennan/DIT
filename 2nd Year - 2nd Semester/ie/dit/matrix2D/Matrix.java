package ie.dit.matrix2D;
import java.util.Random;

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
		
	public void randomise(float max){	
		for(int r = 0; r < row; r++){
			for(int c = 0; c < col; c++){
				Random ran = new Random();
				float randomNum = ran.nextFloat() * (max -1) -1;
				
				setCell(r,c,randomNum);
			}
		}
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
	
	public void add(Matrix b){
		for(int r = 0; r < row; r++){
			for(int c = 0; c < col; c++){
				setCell(r,c,getCell(r,c) + b.getCell(r,c));
				cell[r][c] = cell[r][c] + b.cell[r][c];
			}
		}
	}
	
	public void identity(){
		for(int r = 0; r < row; r++){
			for(int c = 0; c < col; c++){
					//in line if
					setCell(r,c,(r == c) ? 1:0);
			}
		}
	}
	
	public static Matrix mult(Matrix a, Matrix b){
		Matrix x = new Matrix(a.getRows(), b.getCols());
		
		for (int r = 0; r < a.getRows(); r++){
			for (int c = 0; c < b.getCols(); c++)	{
				float sum = 0.0f;
				for (int i = 0; i < a.getCols(); i++)
				{
					sum += a.getCell(r, i) * b.getCell(i, c);
				}
				x.setCell(r, c, sum);
			}
		}
		return x;
	}
	
	public void mult(Matrix b){
		for (int r = 0; r < getRows(); r++){
			for (int c = 0; c < b.getCols(); c++){
				float sum = 0.0f;
				for (int i = 0; i < getCols(); i++){
					sum += getCell(r, i) * b.getCell(i, c);
				}
				setCell(r, c, sum);
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