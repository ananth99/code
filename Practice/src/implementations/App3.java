/*
 * Using Synchronised to implement the intrinsic Thread lock.
 */

package implementations;

public class App3 {
	private int count;
	private synchronized void increment() {
		count++;
	}
	public static void main(String[] args) throws InterruptedException {
		App3 app = new App3();
		app.doWork(); 
	}
	
	public void doWork() throws InterruptedException {
		Thread t1 = new Thread(new Runnable() {
			
			@Override
			public void run() {
				
				for (int i = 0; i < 10000; i++) {
					increment();	
				}
			}
		});
		
		Thread t2 = new Thread(new Runnable() {
			
			@Override
			public void run() {
				
				for (int i = 0; i < 10000; i++) {
					increment();
				}
			}
		});
		
		t1.start();
		t2.start();
		t1.join();
		t2.join();
		System.out.println(count);
	}

}
