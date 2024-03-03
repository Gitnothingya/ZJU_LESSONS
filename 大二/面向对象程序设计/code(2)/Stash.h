//: C04:CppLib.h
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// C-like library converted to C++

#ifndef _STASH_HEAD_
#define _STASH_HEAD_

struct Stash {
  int size;      // Size of each space
  int quantity;  // Number of storage spaces
  int next;      // Next empty space
   // Dynamically allocated array of bytes:
  unsigned char* storage;
  // Functions!
  void initialize(int size);
  void cleanup();
  int add(void* element);
  void* fetch(int index);
  int count();
  void inflate(int increase);
}; ///:~

#endif
