/*
 * Comparable implementation.
 */
package implementations;

public class Demo implements Comparable<Demo> {
	
	int size;
	String desc;
	
	public Demo(int size,String desc) {
		this.size = size;
		this.desc = desc;
	}
	
	public int getSize() {
		return size;
	}
	
	public void setSize(int size) {
		this.size = size;
	}
	
	public String getDesc() {
		return desc;
	}
 
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	@Override
	public int compareTo(Demo tv) {
 
		if (this.getSize() > tv.getSize())
			return 1;
		else if (this.getSize() < tv.getSize())
			return -1;
		else
			return 0;
	}
	
	public static void main(String[] args) {
		Demo tv = new Demo(17,"Awesome");
		Demo tv1 = new Demo(19,"Super Awesome");
		if(tv.compareTo(tv1)>0)
			System.out.println("tv is better than tv1");

		else
			System.out.println("tv1 is better than tv");

	}

}
