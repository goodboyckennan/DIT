package ie.dit.kennan;

public class Dog extends Animal{
	
	public Dog(String name){
		super(name,4);
	}
	
	public void speak(){
		System.out.println("Woof!!");
	}
}