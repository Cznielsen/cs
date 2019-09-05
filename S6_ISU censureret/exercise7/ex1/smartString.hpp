#ifndef SMARTSTRING_HPP
#define SMARTSTRING_HPP

#include <string>

class SmartString{
  
public:
  SmartString(std::string* str){
    str_ = str;}
  
  ~SmartString(){
    delete str_;  // Clear memory on death
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
  
private:
  SmartString(const SmartString& other);
  SmartString& operator=(const SmartString& other);
  std::string* str_;  
};


#endif
