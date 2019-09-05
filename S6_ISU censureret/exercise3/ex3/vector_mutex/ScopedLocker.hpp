#ifndef SCOPEDLOCKER_HPP
#include <iostream>
#define SCOPEDLOCKER_HPP

// Header to be included in main

class ScopedLocker{

  pthread_mutex_t& m; // Needs '&' otherwise variable will be passed as value.

public:
  ScopedLocker(pthread_mutex_t& mutex) : m(mutex){ // pass mutex on construction
    std::cout << "Holding lock" << std::endl;
  }
  
  ~ScopedLocker(){ // Is invoked on the destruction of the object (source: stackoverflow about the magic of ~)
    std::cout << "Releasing lock" << std::endl;
  }
  
};

#endif
