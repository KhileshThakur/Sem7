#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

void knapsack(int W, vector<int>& value, vector<int>& weight, int items){

    vector<vector<int>> table(items+1, (vector<int>(W+1, 0)));

    for(int i=0; i<=items; i++){
        for(int w=0; w<=W; w++){
            if(i==0 || w==0){
                table[i][w]=0;
            }
            else if(weight[i-1] <= w){
                table[i][w] = max(value[i-1]+ table[i-1][w- weight[i-1]] , table[i-1][w]);
            }
            else{
                table[i][w] = table[i-1][w];
            }
        }
        
    }
    for(int i=0; i<=items; i++){
        for(int w=0; w<=W; w++){
            cout<<table[i][w]<<"\t";
        }
        cout<<endl;
    }

    cout<<"Maximum Value : "<< table[items][W];
}


int main(){
    int n, W;
    cout<<"Enter Total Items : ";
    cin>>n;
    cout<<"Enter Capacity of Knapsack : ";
    cin>>W;
    vector<int> value(n);
    vector<int> weight(n);

    cout<<"Enter Values of Items : "<<endl;

    for(int i=0; i<n; i++){
        cin>>value[i];
    }

    cout<<"Enter Weights of Items : "<<endl;

    for(int i=0; i<n; i++){
        cin>>weight[i];
    }

    knapsack(W, value, weight, n);

    return 0;
}
