#ifndef MUTEX_HPP
#define MUTEX_HPP
#include <pthread.h>
#include <osapi/Utility.hpp>
namespace osapi
{
  class Mutex : Notcopyable{
  public:
    Mutex();
      void lock();
    void unlock();
    ~Mutex();
  private:
   friend class Conditional;
    pthread_mutex_t m_;
  };
}
#endif
