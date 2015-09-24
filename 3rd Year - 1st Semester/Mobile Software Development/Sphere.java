public class Sphere extends Shape implements ThreeDShape{
	
	private int radius;
	private final double pi = 3.14;
	
	public Sphere(int radius){
		this.radius = radius;
	}
	
	public double area(){
		return 4.0 * pi * (double)radius * (double)radius;
	}
	
	public double calculateVolume(){
		return 4.0 / 3.0 * pi  * (double)radius * (double)radius * (double)radius;
	}
	
	public int getRadius(){
		return radius;
	}
}