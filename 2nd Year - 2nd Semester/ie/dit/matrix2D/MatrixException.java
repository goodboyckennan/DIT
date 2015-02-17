package ie.dit.matrix2D;

public class MatrixException extends Exception{
	private String message;
	
	MatrixException(String message){
		this.message = message;
	}
	MatrixException(){
		this("Blank");
	}
	
	public String getMessage(){
		return message;
	}
	
	public void setMessage(String message){
		this.message = message;
	}
	
}