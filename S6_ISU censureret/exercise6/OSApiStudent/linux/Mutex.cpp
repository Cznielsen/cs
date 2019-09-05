#include <osapi/Mutex.hpp>
#include <osapi/Utility.hpp>
#include <pthread.h>

namespace osapi {
  Mutex::Mutex(){
    m_ = PTHREAD_MUTEX_INITIALIZER;
  }

  void Mutex::lock(){
    pthread_mutex_lock(&m_);
  }

  void Mutex::unlock(){
    pthread_mutex_unlock(&m_);
  }

  Mutex::~Mutex(){
    pthread_mutex_unlock(&m_);
  }
}
