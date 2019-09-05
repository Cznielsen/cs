#include <string>
// #include "smartString.hpp"
#include <iostream>
#include <boost/shared_ptr.hpp>

int main(int argc, char* argv[]){
  
  // SmartString ss(new std::string("Hello world"));
  boost::shared_ptr<std::string> ss(new std::string("Hello world"));
  
  std::cout << "String length: " << ss->length() << std::endl;
  
  if(ss->find("world") != std::string::npos)
    std::cout << "The 'ss' string does contain 'world'" << std::endl;
  else
    std::cout << "The 'ss' string does NOT contain 'world'" << std::endl;
  
  // SmartString ss2 = ss; // <- Deliberately why? What happens?

  std::string* copyThis = new std::string("Copying works!");

  /*
  SmartString appendToThis(new std::string("Is ISU Love? "));
  SmartString wrong(new std::string("No! :("));
  SmartString right(new std::string("Yeah! :)"));
  SmartString copied(copyThis); */

  boost::shared_ptr<std::string> appendToThis(new std::string("Is ISU Love? "));
  boost::shared_ptr<std::string> wrong(new std::string("No! :("));
  boost::shared_ptr<std::string> right(new std::string("Yeah! :)"));
  boost::shared_ptr<std::string> copied(copyThis);

  std::cout << *copied << std::endl;
  wrong = right;
  std::cout << *appendToThis.get() + *wrong.get() << std::endl;

  delete copyThis;
}
