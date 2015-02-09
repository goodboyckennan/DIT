package ie.dit.matrix2D;

public class Main{
	
	public static void main(String[] args){
		Matrix m = new Matrix(5,3);
		m.setCell(3,2,5);
		
		System.out.println(m.getRows());
		System.out.println(m.getCols());
		
		System.out.println(m); //toString method called implicitly
	}
}