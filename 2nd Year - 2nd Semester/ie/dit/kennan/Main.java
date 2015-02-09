package ie.dit.kennan;

public class Main{
	
	public static void main(String[] args){
		Animal duke = new Dog("Duke");
	
		duke.speak();
		//System.out.println(duke.name); name is private
		System.out.println(duke.getName()); //correct way
	}	
}