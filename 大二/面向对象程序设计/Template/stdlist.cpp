#include <iostream>
   using namespace std;
#include <list>
#include <string>

   int main( ) {
      list<string> s;
      list<string>::iterator p;
		string t;
		for (int a=0; a<5; a++) {
			cout << "enter a string : ";
			cin >> t;
			p = s.begin();
			while (p != s.end() && *p < t) p++;
			s.insert(p, t);
		}
      for (p=s.begin(); p!=s.end(); p++)
         cout << *p << " ";
      cout << endl;
   }