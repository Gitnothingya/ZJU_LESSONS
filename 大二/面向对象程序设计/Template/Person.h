#ifndef _PERSON_H
#define _PERSON_H

class Person {
public:
   Person(const char *s);
   ~Person();
   void print();
   // ... accessor functions
private:
   char *name;   // char * instead of string
   //... more info e.g. age, address, phone
};

#endif
