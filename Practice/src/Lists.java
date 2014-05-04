import java.util.*;
public class Lists {
	
	static String chars[] = {"Hello","World","How","are","you"};
	public ArrayList<String> list = new ArrayList<String>();
	
	private void addChar(String[] characters) {
		for(int i=0;i<characters.length;++i){
			list.add(characters[i]);
			printCharacters(i);
		}
	}
	
	private void printCharacters(int i) {
		System.out.println("characters "+(i+1)+":"+list.get(i));
	}
	
	private int sizeofCharactersList() { 
		System.out.println("\n"); System.out.println("Total No of Characters in Array:" + chars.length); 
		System.out.println("Total No of Characters in List:" + list.size()); return list.size(); 
	}

	
	public static void main(String[] args) {
		Lists example = new Lists(); 
		example.addChar(chars); 
		example.printCharacters(1); 
		int size = example.sizeofCharactersList();
		System.out.println(size);

		

	}

}
