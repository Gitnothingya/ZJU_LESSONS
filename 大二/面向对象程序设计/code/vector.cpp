#include <iostream>

using namespace std;
#include <vector>

int main( ) {
        vector<int> x;
        for (int a=0; a<1000; a++)
                x.push_back(a);
        vector<int>::iterator p;
        for (p=x.begin(); p<x.end(); p++)
                cout << *p << " ";
        return 0;
}