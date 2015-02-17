package alg;
import java.util.Random;

class Heap{
	private int[] a;
	private int N;
	private int[] hPos;
	
	private static int hmax = 100;
	
	Heap(){
		a = new int[hmax + 1];
		N = 0;
		hPos = a;
	}
	Heap(int _hmax){
		a = new int[_hmax + 1];
		N = 0;
		hPos = a;
	}
	
	public void insert(int x){
		a[++N] = x;
		siftUp(N);
	}
	
	public void siftUp(int k){
		int v = a[k];
		a[0] = MAX_VALUE;
	}
	
	public void display(){
		System.out.println(a[1]);
		
		for(int i = 1; i <= N/2; i = i*2){
			for(int j = 2*i; j < 4*i && j <= N; ++j){
				System.out.println(a[j]);
				System.out.println("\n");
			}
		}
	}
}

public class HeapTest{
	public static void main(String[] args){
		Heap h = new Heap();
		
		Random r = new Random();
		
		int i,x;
		for(i = 0; i < 10; ++i){
			x = r.nextInt(99);
			System.out.println("\nInserting " + x);
			h.insert(x);
			h.display();
		}			
	}
}