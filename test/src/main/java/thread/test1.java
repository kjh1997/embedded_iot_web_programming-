package thread;

public class test1 {
	
	public static void main(String[] args) {
		System.out.println("test");
		buffer buffer = new buffer();
		Thread t1 = new Thread(new producer(buffer));
		Thread t2 = new Thread(new consumer(buffer));
		
		t2.start();
		t1.start();
	}
}
class buffer {
	private int data;
	private boolean empty = true;
	public synchronized int get() {
		while(empty) {
			System.out.println("get");
			try {
				wait();
			} catch (InterruptedException e){
				
			}
			
		}
		empty = true;
		notifyAll();
		System.out.println("get2");

		return data;
	}
	public synchronized void put(int d) {
		while(!empty) {
			System.out.println("put");
			try {
				wait();
			} catch (InterruptedException e){
				
			}
			
		}
		this.data = d;
		empty = false;
		notifyAll();
		System.out.println("put2");
	}
	
}

class producer implements Runnable{
	private buffer buffer;
	public producer(buffer b) {
		this.buffer = b;
		
	}
	public void run() {
		for(int i = 0 ; i < 10; i++) {
			System.out.println("pro");
			int data = buffer.get();
			System.out.println("producer :" + data);
			try {
				Thread.sleep((int)(Math.random()*10));
			}catch(InterruptedException e) {
				
			}
		}
	}
}

class consumer implements Runnable{
	private buffer buffer;
	public consumer(buffer b) {
		this.buffer = b;
		
	}
	public void run() {
		for(int i = 0 ; i < 10; i++) {
			System.out.println("con");
			buffer.put(i);
			System.out.println("consumer :" + i);
			try {
				Thread.sleep((int)(Math.random()*100));
			}catch(InterruptedException e) {
				
			}
		}
	}
}





//class myThread extends Thread {
//	database data;
//	public myThread(database d) {
//		this.data = d;
//	}
//	
//	public void run() {
//		data.increment();
//		data.printCounter();
//	}
//}
//
//class database{
//	private int value=0;
//	public void increment() { value++;	}
//	public void decrement() { value--;	}
//	public void printCounter() {		System.out.println(value);	}
//}
//
