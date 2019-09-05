#ifndef VECTOR_HPP_
#define VECTOR_HPP_

//=======================================================
// Class: Vector
// contains a size_-size vector of integers.
// Use the function setAndTest to set all elements
// of the vector to a certain value and then test that
// the value is indeed correctly set
//=======================================================
#include "ScopedLocker.hpp"

class Vector
{
public:
   Vector(unsigned int size = 10000) : size_(size)
      {
         vector_ = new int[size_];
         set(0);
      }

   ~Vector()
      {
         delete[] vector_;
      }

   bool setAndTest(int n)
      {
         // We lock the mutex
         ScopedLocker lock(&mutex);

         // Critical section
         set(n);
         return test(n);
      }  // ScopedLocker goes out of scope and the destructor will
         // therefore be run and unlock the mutex

private:
   pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
   void set(int n)
      {
         for(unsigned int i=0; i<size_; i++) vector_[i] = n;
      }

   bool test(int n)
      {
         for(unsigned int i=0; i<size_; i++) if(vector_[i] != n) return false;
         return true;
      }

   int*           vector_;
   unsigned int   size_;
};

#endif
