//: C12:OperatorOverloadingSyntax.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#include <iostream>
using namespace std;

class Integer {
  int i;
  char *s;
public:
  Integer(int ii) : i(ii) {
  	cout << "Integer(" << ii << ")" << endl;
    s = new char[ii];
  }
  Integer(const Integer& r):i(r.i) {
    cout << "Integer(Integer)" << endl;
  }
  Integer& operator=(const Integer& that) {
    if ( this != &that ) {
      cout << "Integer::=" << endl;
      delete this->s;
      char *p = new char[strlen(that.s)+1];
      strcpy(p, that.s);
      this->s = p;
      this->i = that.i;
    }
    return *this;
  }
  // const Integer operator+(const Integer& rv) const {
  //   cout << "operator+" << endl;
  //   return Integer(i + rv.i);
  // }
  Integer&
  operator+=(const Integer& rv) {
    cout << "operator+=" << endl;
    i += rv.i;
    return *this;
  }
  int getValue() const { return i;}
  friend istream& operator>>(istream& is, Integer& t);
  friend ostream& operator<<(ostream& os, const Integer& t);
  friend const Integer operator+(const Integer& r, const Integer& l);
};

const Integer operator+(const Integer& r, const Integer& l) 
{
  	cout << "operator+" << endl;
	return Integer(r.getValue() + l.getValue());
}

istream& operator>>(istream& is, Integer& t)
{
  is>>t.i;
  return is;
}

ostream& operator<<(ostream& os, const Integer& t)
{
  os<<t.i;
  return os;
}

int main() {
  Integer ii(1);
  Integer jj(ii);
  (jj = ii) = 6;
  cin >>ii;
  cout << ii;
} ///:~
