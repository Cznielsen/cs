#ifndef SMARTSTRING_HPP
#define SMARTSTRING_HPP

#include <string>

class SmartString{
  
public:
  SmartString(std::string* str){
    str_ = str;
    counter_ = new unsigned int(1);
  }
  
  ~SmartString(){  // Clear memory on death
    (*counter_)--;   // Source: https://stackoverflow.com/a/14516384 on how to decrement a pointer properly.

    if(*counter_ <= 0){ // Delete when you are the last one using these
      delete str_;                
      delete counter_;
    }
  }
  
  std::string* get(){
    return str_;
  }
  
  std::string* operator->(){
    return str_;
  }
  
  std::string& operator*(){
    return *str_;
  }
  
  SmartString(const SmartString& other){ // Copy constructor. Point counter and string to current object.
    counter_ = other.counter_;
    (*counter_)++;
    str_ = other.str_;
  }
  
  SmartString& operator=(const SmartString& other){ // Assignment op. Deletes if counter is 0, otherwise points and increases counter.
    (*counter_)--;
    if(*counter_ <= 0){
      delete str_;
      delete counter_;
    }
    counter_ = other.counter_;
    (*counter_)++;
    str_= other.str_;
    return *this;
  }
  
private:
  std::string* str_;
  unsigned int* counter_;
};


#endif
