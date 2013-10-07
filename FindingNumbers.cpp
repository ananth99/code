/* Author: Ananth Madhavan */
/* Finding Numbers Problem. Freshdesk hiring challenge. */
#include <iostream>
#include <vector>

using namespace std;
int main(){
    int T;
    cin>>T;
    while(T--){
        unsigned long Z,M,N;
        vector <int> a;
        vector <int> b;
        int count=0;
        cin>>Z;
        cin>>M;
        cin>>N;
        int i,j;
        for(i=1;i<=M;++i)
            a.push_back(i);
        for(i=1;i<=N;++i)
            b.push_back(i);
        
        if(M<Z && N<Z){
            for(i=1;i<M;++i){
                for(j=1;a[i]*b[j]<=Z;++j)
                    if(a[i]*b[j]==Z)
                        count++;
            }
            cout<<count<<endl;
        }
	    else if(M<Z && N>=Z){
	        for(i=0;i<M;++i){
                for(j=0;a[i]*b[j]<=Z;++j)
                    if(a[i]*b[j]==Z)
                        count++;
            }
            cout<<count<<endl;
        }
	    else if(M>=Z && N<Z){
	        for(i=0;i<Z;++i){
                for(j=0;a[i]*b[j]<=Z;++j)
                    if(a[i]*b[j]==Z)
                        count++;
            }
            cout<<count<<endl;
        }
	    else if(M>=Z && N>=Z){
	        //count=count+2;
            for(i=0;i<Z;++i){
                for(j=0;a[i]*b[j]<=Z;++j)
                    if(a[i]*b[j]==Z)
                        count++;
            }
            cout<<count<<endl;
        }
	}
    return 0;
}
