/*
 * Using volatile to enable thread interruptions.
 */

package implementations;

import java.util.Scanner;

class Processor1 extends Thread {
	private	boolean running = true;
	public void run() {
		while(running){
			System.out.println("Hello");
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public void shutdown() {
		running = false;
	}
}

public class App1 {

	private static Scanner scanner;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Processor1 p1 = new Processor1();
		p1.start();
		System.out.println("Press enter to stop...");
		
		scanner = new Scanner(System.in);
		scanner.nextLine();
		
		p1.shutdown();
	}

}
