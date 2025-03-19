#include <bits/stdc++.h>
using namespace std;

int main(){

    cout << " Hello there  !! \n";
    int a,b;
    a=2;
    b=5;
    
    cout << a << " " << b << '\n';
    
    a ^= b;
    b ^= a;
    a ^= b;

    cout << a << " " << b << '\n';
    
    return 0;
}