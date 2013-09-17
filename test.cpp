#include <cstdio>
#include <algorithm>
#include <cstring>
#include <set>
#include <vector>
#include <queue>
#include <map>
#include <iostream>
#include <cmath>

#define S(x) scanf("%d",&x)
#define P(x) printf("%d\n",x)
#define rep(i,a,b) for(int i=a;i<b;i++)
#define pb push_back
using namespace std;

typedef long long int LL;
typedef vector<int > VI;

int main() {
       int tc;
          S(tc);
             while(tc--) {
                       int n;
                             scanf("%d",&n);
                                   int A[n];
                                         rep(i,0,n) scanf("%d",&A[i]);
                                               sort(A,A+n);
                                                     int mx = A[0]+A[n-1];
                                                           int mn = A[0]+A[n-1];
                                                                 rep(i,0,n/2) {
                                                                              mx = max(mx,A[i]+A[n-1-i]);
                                                                                       mn = min(mn,A[i]+A[n-1-i]);
                                                                                             }
                                                                                                   printf("%d\n",mx-mn);
                                                                                                      }
                                                                                                         return 0;
}
      
