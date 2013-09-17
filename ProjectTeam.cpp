/* Author: Ananth Madhavan */
/* Project Team */
#include <cstdio>
#include <algorithm>
#include <cstring>
#include <set>
#include <vector>
#include <queue>
#include <map>
#include <iostream>
#include <cmath>

using namespace std;
int main(){
    int tc;
    cin>>tc;
    while(tc--){
        int n;
        cin>>n;
        int A[n];
        int i;
        for(int i=0;i<n;++i){
            cin>>A[i];
        }
        sort(A,A+n);
        int mx=A[0]+A[n-1];
        int mn=A[0]+A[n-1];
        int j;
        for(int j=0;j<(n/2);++j){
             mx=max(mx,A[j]+A[n-1-j]);
             mn=min(mn,A[j]+A[n-1-j]);
        }
        cout<<(mx-mn)<<"\n";
    }
    return 0;
}     


        


