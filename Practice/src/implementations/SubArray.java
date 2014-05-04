/*
 * Finding the sub array(subset) with the maximum sum.
 * Going by Set Theory, power set contains all the subsets of a set. By slicing the array and 
 * getting all it's power sets we can analyze each subset and find out which subset has the maximum sum.
 * 
 * We can use recursion to slice the array into it's corresponding subsets.
 */
package implementations;
import java.util.*;

public class SubArray {
	/*
	 * Method to recursively return each of the power set as a set and add it to sets 
	 * which is again a set of type Set. Takes a set as parameter.
	 */
	public static Set<Set<Integer>> powerSet(Set<Integer> originalSet) {
        
		Set<Set<Integer>> sets = new HashSet<Set<Integer>>(); //All the subsets will be stored in sets. 
        if (originalSet.isEmpty()) {
            sets.add(new HashSet<Integer>());
            return sets;
        }
        List<Integer> list = new ArrayList<Integer>(originalSet);
        int head = list.get(0);
        Set<Integer> rest = new HashSet<Integer>(list.subList(1, list.size()));
        for (Set<Integer> set : powerSet(rest)) {
            Set<Integer> newSet = new HashSet<Integer>();
            newSet.add(head);
            newSet.addAll(set);
            sets.add(newSet);
            sets.add(set);
        }
        return sets;
    }
	
	public static void main(String[] args) {
		
		Set<Integer> list = new HashSet<Integer>();
		Scanner s = new Scanner(System.in);
		System.out.println("Enter the list of elements:(q to quit)");
		
		while(s.hasNextInt()){
			list.add(s.nextInt());
		}
		s.close();
		
		int largestSum = 0;
		Set<Integer> maximumSumSet = new HashSet<Integer>(); //To store the sub-array with maximum sum.
		
		for (Set<Integer> set : powerSet(list)){
			int sum = 0;
			for(Integer i:set){
				sum += i;
//				System.out.println(i);
			}
			if(sum > largestSum){
				largestSum = sum;
				maximumSumSet = set;
			}
//			System.out.println();
		}
		
		System.out.println("Sub array with maxumum sum:");
		System.out.println(maximumSumSet);
		System.out.println("The sum is:");
		System.out.println(largestSum);
	}
}
