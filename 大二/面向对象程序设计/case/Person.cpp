#include "Person.h"
#include <cstring>     // #include <string.h>
using namespace std;

Person::Person( const char *s ) {
	name = new char[::strlen(s) + 1];
  ::strcpy(name, s); 
}

Person::~Person() {
  delete [] name;     // array delete
}
