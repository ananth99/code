/* Author: Ananth Madhavan */
/* Finding Pair problem. Freshdesk hiring challenge. */

#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
int main(){
    int T,N;
    cin>>T;
    while(T--){
        vector <int> A;
        int count=0;
        cin>>N;
        int i;
        int x;
        for(i=0;i<N;++i){
            cin>>x;
            A.push_back(x);
        }
    sort(A.begin(),A.end());
    int j;
    for(i=0;i<N;++i){
        for(j=i;j<N;++j)
            if(A[j]==A[i])
                count++;
    }
    cout<<count<<endl;
    }
    return 0;
}
