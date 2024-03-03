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
  HowMany(const HowMany& r) {objectCount++; print("HowMany(HowMany)");}
  void set(int i) { this->i = i; }
  void print(const string& msg = "") {
    if(msg.size() != 0) cout << msg << ": ";
    cout << "objectCount = "
         << objectCount 
         << " i=" << i << endl;
  }
  ~HowMany() {
    objectCount--;
    print("~HowMany()");
  }
private:
  int i;// = -1;
};

// Pass and return BY VALUE:
HowMany f(HowMany x) {
	cout << "begin of f" <<endl;
  x.print("x argument inside f()");
  x.set(2);
cout << "end of f" <<endl;
  return x;
}

int main() {
  HowMany h;
  h.set(1);
  h.print("after construction of h");
  HowMany h2 = f(h);
  h2.set(3);
  h.print("after call to f()");
} ///:~
