package ie.dit.kennan;

public class Animal{
	private String name;
	private int numLegs;
	
	Animal(String name, int numLegs){
		setName(name);
		setNumLegs(numLegs);
	}
	
	Animal(){
		this("",0);
	}
	
	public void setName(String name){
		this.name = name;
	}
	public String getName(){
		return name;
	}
	public void setNumLegs(int numLegs){
		this.numLegs = numLegs;
	}
	public int getNumLegs(){
		return numLegs;
	}		
	public void speak(){
		System.out.println("I can't speak.");
	}	
}