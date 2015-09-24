public class Square extends Shape{
	
	private int length;
	private final double pi = 3.14;
	
	public Square(int length){
		this.length = length;
	}
	
	public double area(){
		return (double)(length * length); 
	}
	
	public int getLength(){
		return length;
	}
	
	public String toString(){
		String str = "This is a Square with a radius of ";
		str += getLength() + " and an area of " + area();
		return str;
	}
}