#include <iostream>
   using namespace std;
#include <vector>
#include <algorithm>

   int main( ) {
      vector<int> x;
      for (int a=10; a>0; a--)
         x.push_back(a);
      vector<int>::iterator p;
      for (p=x.begin(); p<x.end(); p++)
         cout << *p << " ";
      cout << endl;
      swap(x[2],x[5]);
      for (p=x.begin(); p<x.end(); p++)
         cout << *p << " ";
      cout << endl;
      p = find(x.begin(),x.end(),3);
      x.erase(p);        
      for (p=x.begin(); p<x.end(); p++)
         cout << *p << " ";
      cout << endl;
      p = find(x.begin(), x.end(), 6);
      x.insert(p, 99);	
      for (p=x.begin(); p<x.end(); p++)
         cout << *p << " ";
      cout << endl;
      x.clear();
      x.insert(x.begin(), 100);
      for (p=x.begin(); p<x.end(); p++)
         cout << *p << " ";
      cout << endl;
      return 0;
   }