#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

class Job{
    public:
        char id;
        int deadline;
        int profit;

        Job(char id, int deadline, int profit){
            this->id = id;
            this->deadline = deadline;
            this->profit = profit;
        }
};

bool compare(Job a, Job b){
    return a.profit>b.profit;
}

void printJobSeq(vector<Job> &jobs){
    sort(jobs.begin(), jobs.end(), compare);
    int n = jobs.size();

    for(int i=0; i<n; i++){
        cout<<jobs[i].id<<" "<<jobs[i].deadline<<" "<<jobs[i].profit<<endl;
    }

    int maxdeadline = 0;
    for(int i=0; i<n; i++){
        if(jobs[i].deadline > maxdeadline){
            maxdeadline = jobs[i].deadline;
        }
    }

    vector<char> result(maxdeadline, 'X');
    vector<bool> slot(maxdeadline, false);
    vector<int > totalProfit(maxdeadline, 0);

    for(int i=0; i<n; i++){
        for(int j=jobs[i].deadline-1; j>=0; j--){
            if(!slot[j]){
                result[j] = jobs[i].id;
                slot[j] = true;
                totalProfit[j] = jobs[i].profit;
                break;
            }
        }
    }
    cout<<"Index\t"<<"ID"<<"\t"<<"Profit\t"<<endl;
    int totalpf =0;
    for(int i=0; i<maxdeadline; i++){
        cout<<i<<"\t"<<result[i]<<"\t"<<totalProfit[i]<<endl;
        totalpf += totalProfit[i];
    }
    cout<<"TOTAL PROFIT\t"<<totalpf<<endl;

    
}


int main(){

    vector<Job> jobs = {
        Job('a', 2, 100),
        Job('b', 1, 19),
        Job('c', 2, 27),
        Job('d', 1, 25),
        Job('e', 3, 15)
    };
    cout<<"Job Sequence "<<endl;
    printJobSeq(jobs);

    return 0;
}
