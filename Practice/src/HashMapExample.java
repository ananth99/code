import java.util.HashMap;  
public class HashMapExample { 
	HashMap<String, String> hashMap=new HashMap<String, String>(); 
	String Books[]={"Famous Five","Goosebumps","Robinson Crusueo","Nancy Drew","The Cell","The Davinci Code","Harry Potter"}; 
	public void mapAuthors() { 
		hashMap.put("Famous Five","Enid Blyton"); 
		hashMap.put("Goosebumps","R.L.Stine"); 
		hashMap.put("Nancy Drew","Carolyn Keene"); 
		hashMap.put("The Cell","Christopher Pike"); 
		hashMap.put("The Davinci Code","Dan Brown"); 
		hashMap.put("Harry Potter","J.K. Rowling"); 
	} 
	public void getBookList() { 
		for(int i=0;i<Books.length;i++){ 
			if(hashMap.containsKey(Books[i])) { 
				System.out.println("Author"+(i+1)+":\t"+hashMap.get(Books[i])+"\t"+Books[i]); 
			} 
			else { 
				System.out.println("\nThe Imformation about the author of the book\t"+Books[i]+"\tis not available\n"); 
			} 
		} 
	} 
	
	public static void main(String args[]){ 
		HashMapExample hashMapExample=new HashMapExample(); 
		hashMapExample.mapAuthors(); 
		hashMapExample.getBookList(); 
	} 
}

