package implementations;

//import java.util.concurrent.ExecutorService;
//import java.util.concurrent.Executors;

class Processor implements Runnable {
	
	private int id;
	public Processor(int id){
		this.id = id;
	}
	
	public void run() {
		
		System.out.println("Starting: "+ id);
		
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Completed:"+ id);
	}
}

public class App {
	
	public static void main(String[] args) {
//		ExecutorService executor = Executors.newFixedThreadPool(2);
		Thread t1 = new Thread(new Processor(1));
		Thread t2 = new Thread(new Processor(2));
		t1.start();
		t2.start();
		

	}
}
