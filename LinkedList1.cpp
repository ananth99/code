/* Author: Ananth Madhavan
* 9th Nov 2013
* Linked list traversal problem samples.
*/
#include <iostream>
#include <cstdlib>
#include <string>
using namespace std;
class StackImplementation {
    public:
    struct node{
        node *next;
        int item;
    };
    node *top;
    StackImplementation(){
        top=0;
        int error=0;
    }
    
    ~StackImplementation(){
        node *ptr=top;
        while(ptr){
            top=top->next;
            ptr->next=0;
            delete ptr;
            ptr=top;
    	}
    }
    int size=0;
    void push(int n){
        node *t=new node();
        t->item=n;
        t->next=top;
        top=t;
        size++;
        cout<<"Item pushed."<<endl;
        
    }
    int pop(){
        if(size==0){
            cerr<<"\n Stack underflow.";
            exit(0);
        }
        else{
           int temp=top->item;
           top=top->next;
           size--;
           return temp;
        }
    }
    void traverse(){
        node *iterator= new node();
        iterator=top;
        int i=1;
        while(iterator){
            cout<<"Item "<<i<<":"<<iterator->item<<endl;
            iterator=iterator->next;
            ++i;
        }
        cout<<"Press <enter> to continue.";
        cin.get();
    }
    void insert(){
        //Insert given element at a given position. 
        int p;
        cout<<"\n Enter the position you want to insert element(1-5):";
        cin>>p;
        int e;
        cout<<"\n Enter the element:";
        cin>>e;
        node *iterator=new node();
        iterator=top;
        int i=1;
        while(iterator && i<p-1){
              iterator=iterator->next;
              ++i;
        }
        node *element= new node();
        element->next=iterator->next;
        iterator->next=element;
        element->item=e;
        traverse();
    }
    
};
int main(){
    
    StackImplementation s;
    char choice=' ';
    while(choice!='6'){
    	// system("clear");
	    cout<<"What do you want to do?"<<endl;
	    cout<<"1) Push an element."<<endl
			<<"2) Pop an element."<<endl
			<<"3) Insert an element."<<endl
			<<"4) Delete an element."<<endl
			<<"5) Print the stack."<<endl
			<<"6) Exit."<<endl;
	    cin>>choice;cin.get();
	    switch(choice){
	    	case '1':
	    		int n;
	    		cout<<"Enter the element to push:";
	    		cin>>n;
	    		s.push(n);
	    		break;
	    	
	    	case '2':
	    		cout<<"The popped element is: "<<s.pop()<<endl;
	    		break;
	    	
	    	case '3':
	    		s.insert();
	    		break;
			
			case '4':
				int k;
				cout<<"Enter the element position you want to delete:";
				cin>>k;
				// s.delete(n);
				break;
			
			case '5':
				s.traverse();
				break;

			default:
				break;
		}
    }
    return 0;
}
