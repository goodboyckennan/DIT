public class Cube extends Shape implements ThreeDShape {

	
	private int length;
	private final double pi = 3.14;
	
	public Cube(int length){
		this.length = length;
	}
	
	public double area(){
		return (double)(length * length); 
	}
	
	public double calculateVolume(){
		//return something
	}
	
	public int getLength(){
		return length;
	}
}