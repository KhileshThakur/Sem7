#include <iostream>
using namespace std;

int stepCountI=0, stepCountR=0;

int fibRec(int n){
    stepCountR++;
    if(n<=1){
        return n;
    }
    return fibRec(n-1) + fibRec(n-2);
}

int fibItr(int n){
    if(n<=1){
        return n;
    }
    else{
        int a=0, b=1, c;
        for(int i=2; i<=n; i++){
            c= a+b;
            a=b;
            b= c;
            stepCountI++;
        }
        return b;
    }
}

int main() {
    int n; 
    cin>>n;
    cout<<"Iteration Method: "<<endl;
    cout<<"Fib number at position "<<n<<": "<<fibItr(n)<<endl;
    cout<<"StepCount:"<<stepCountI<<endl<<endl;
    cout<<"Recursion Method: "<<endl;
    cout<<"Fib number at position "<<n<<": "<<fibRec(n)<<endl;
    cout<<"StepCount:"<<stepCountR;
}
