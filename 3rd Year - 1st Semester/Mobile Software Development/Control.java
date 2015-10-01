

public class Control 
{

	public static void main(String[] args) 
	{
		//Lab 2 part 2
		// instantiate a person and print out details of the 			object
		Student s1 = new Student ("1", 'm');
		System.out.println(s1.toString());
		
		Student s2 = new Student ("2", 'm');
		System.out.println(s2.toString());
		
		Student s3 = new Student ("Kennan", 'm');
		System.out.println(s3.toString());
		
		// instantiate students 
		Student student1 = new Student("Mary", 'f', 23432);
		System.out.println(student1);

		Student student2 = new Student("Sean", 'm', 88734);
		System.out.println(student2);
		
		
		//Lab 2 part 2
		Shape[] shape = new Shape[5];
		shape[0] = new Circle(2);
		shape[1] = new Square(3);
		
		for(int x = 0; 0 < shape.length; x++){
			System.out.println("This object is of " + shape[x].getClass() + " : " + shape[x].toString());		
		}
			
	} // end main

} // end class

