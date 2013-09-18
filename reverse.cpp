/* Author: Ananth Madhavan */
/* Basic program to implement number reversal */

#include <iostream>
using namespace std;
int reverse(int m);
int main(){
    int m;
    cin>>m;
    cout<<reverse(m)<<endl;
    return 0;
}

int reverse(int m){
    int rev=0;
    while(m!=0){
        rev=rev*10+m%10;
        m=m/10;
    }
    return rev;
}

