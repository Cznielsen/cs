#include <osapi/Mutex.hpp>
#include <osapi/Utility.hpp>
#include <osapi/Thread.hpp>
#include <iostream>

/* Tests by having two threads where one of them locks, prints and unlocks. 
The other one starts a bit later and hogs the lock, 
which makes the other thread unable to print what it wants. */

class LockAndPrintHello : public osapi::ThreadFunctor { //Inherits from ThreadFunctor just like the TestThread case
public:
  LockAndPrintHello(osapi::Mutex* mutex) : m_(mutex){}
private:
  osapi::Mutex* m_;
protected:
  void run(){ // Overwriting run
    std::cout << "Time to Hello" << std::endl;

    while(1){
      m_->lock();
      std::cout << "Hello" << std::endl;
      m_->unlock();
      osapi::sleep(1000);
    }
  }
};

class LockAndPrintGoodbye : public osapi::ThreadFunctor {  // Never gives up lock
    
public:
  LockAndPrintGoodbye(osapi::Mutex* mutex) : m_(mutex){}
private:
  osapi::Mutex* m_;
protected:
  void run(){
    std::cout << "Time to Goodbye" << std::endl;
    while(1){
      m_->lock();
      while(1){
        std::cout << "Goodbye" << std::endl;
        osapi::sleep(1000);
      }
      m_->unlock();
    }
  }
  
};

int main(int argc, char* argv[]){
  osapi::Mutex mutex;
  LockAndPrintHello* t1 = new LockAndPrintHello(&mutex);
  LockAndPrintGoodbye* t2 = new LockAndPrintGoodbye(&mutex);
  
  osapi::Thread temperance(t1);
  osapi::Thread gluttony(t2);
  
  temperance.start();
  osapi::sleep(3000);
  gluttony.start();
  osapi::sleep(2000);
  temperance.join();
  gluttony.join();
}
