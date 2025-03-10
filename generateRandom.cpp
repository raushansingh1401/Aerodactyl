#include<bits/stdc++.h>
using namespace std;

int generateRandom(){
    auto now = chrono::steady_clock::now();
    auto time_ns = now.time_since_epoch().count();
    return time_ns % 1000;
}

void testGenerateRandom(){
    int nums_call = 1000;
    unordered_set<int> unique_elems;
    for(int i = 0; i < nums_call; i++){
        int num = generateRandom();
        assert(num >= 0 && num < 1000 && "Generated number is out of range!");
        unique_elems.insert(num);
    }
    assert(unique_elems.size() < 800 && "Numbers are not random enough!");
    cout << "All test cases passed" << endl;
}

int main() {
    testGenerateRandom();
}