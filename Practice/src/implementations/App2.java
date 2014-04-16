package implementations;

class Processor2 implements Runnable {
	public static int count;
	@Override
	public void run() {
		for (int i = 0; i < 1000; i++) {
			count++;
		}
	}
}

public class App2 {

	public static void main(String[] args) throws InterruptedException {
		Thread t1 = new Thread(new Processor2());
		Thread t2 = new Thread(new Processor2());
		t1.start();
		t1.join();
		t2.start();
		t2.join();
		System.out.println(Processor2.count);
	}

}
