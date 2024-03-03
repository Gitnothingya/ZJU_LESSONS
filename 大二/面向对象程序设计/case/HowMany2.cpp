//: C11:HowMany.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// A class that counts its objects
#include <iostream>
#include <string>
using namespace std;

static int objectCount =0;

class HowMany {
public:
  HowMany() { objectCount++; print("HowMany()");}
  HowMany(const HowMany& t) {
	 objectCount++; 
	print("HowMany() copy");
  }
  void print(const string& msg = "") {
    if(msg.size() != 0) cout << msg << ": ";
    cout << "objectCount = "
         << objectCount << endl;
  }
  ~HowMany() {
    objectCount--;
    print("~HowMany()");
  }
};

// Pass and return BY VALUE:
HowMany f(HowMany x) {
  x.print("x argument inside f()");
  return x;
}

int main() {
  HowMany h;
  h.print("after construction of h");
  HowMany h2 = f(h);
  h.print("after call to f()");
} ///:~
