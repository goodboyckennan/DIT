package ie.dit.matrix2D;

public class Main{
	
	public static void main(String[] args){
		Matrix a = new Matrix(4, 4);
		a.randomise(10.0f);
		/*
		a.identity();
		a.setCell(2, 3, 7);
		a.setCell(3, 1, 2);
		a.setCell(3, 0, 4);
		*/
		Matrix b = new Matrix(4, 4);
		b.identity();
		b.setCell(2, 3, 1);
		b.setCell(3, 1, 9);
		b.setCell(3, 0, -7);
		
		Matrix c;
		c = Matrix.mult(a, b); // How to call a static method
		
		System.out.println(a);
		
	}
}