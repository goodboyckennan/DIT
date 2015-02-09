// StackTest.java
// Linked list implementation of Stack
package alg;

class Stack {
    
    class Node {
        int data;
        Node next;  
    }
    private Node top;
      
    public Stack()
    { 
        top = null;
    }
        
    public void push(int x) {
        Node  t = new Node();
        t.data = x;
        t.next = top;
        top = t;
    }

    // only to be called if list is non-empty.
    // Otherwise an exception should be thrown.
    public int pop(){
        int x = top.data;
		top = top.next;
		return x;
    } 

    
    public boolean isEmpty(){
       return top == null;
    }
	
	public boolean isMember(int x){
		Node t = top;
		
		while(t != null){
			if(t.data == x) return true;
			t=t.next;
		}
		return false;
	}

    public void display() {
        Node t = top;
        //Console.Write("\nStack contents are:  ");
        System.out.println("\nStack contents are:  ");
        
        while (t != null) {
            //Console.Write("{0} ", t.data);
            System.out.println(t.data + " ");
            t = t.next;
        }
       
    }

}


public class StackTest
{
    public static void main( String[] arg){
        Stack s = new Stack();
        //Console.Write("Stack is created\n");
        System.out.println("Stack is created\n");
        
        s.push(1); s.push(3);
        s.display();
            
        int i = s.pop();
        System.out.println("Just popped " + i);
        s.display();
		
		int x = 3;
		boolean j = s.isMember(x);
		System.out.println(x + " Member: " + j);
    }
}


