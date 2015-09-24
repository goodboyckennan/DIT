
public class Student extends Person implements PublishDetails
{
    
	  // instance variables
	  private static int studentId = 0;
			
	  // constructor to set up Student 
	  public Student(String name, char gender, int studentId)
	  {
	 	super(name, gender);
		this.studentId = studentId;
	  }
      
    public Student(String name, char gender){
        super(name,gender);
        this.studentId+=1;
    }
    
    public int getStudentId(){
        return studentId;
    }
			
	   // toString method
	   public String toString()
	   {
	   	String strng = super.toString();	// use toString from Person
		strng+= " with student number "+studentId;
		return strng;
	   }
	
	   public void confirmDetails()
	   {
		  // whatever I want to put in	
	   }
		
	   public String getCourseCode()
	   {
		   String courseCode = "My course code etc ";	
		   return courseCode;
	   }
	   
} // end class


