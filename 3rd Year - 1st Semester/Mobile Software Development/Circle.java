public class Circle extends Shape{
	
	private int radius;
	private final double pi = 3.14;
	
	public Circle(int radius){
		this.radius = radius;
	}
	
	public double area(){
		return pi * (double)radius * (double)radius; 
	}
	
	public int getRadius(){
		return radius;
	}
	
	public String toString(){
		String str = "This is a Circle with a radius of ";
		str += getRadius() + " and an area of " + area();
		return str;
	}
}