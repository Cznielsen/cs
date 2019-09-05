#include <osapi/Utility.hpp>
#include <osapi/Mutex.hpp>
#include <osapi/Thread.hpp>
#include <osapi/Conditional.hpp>
#include <iostream>

class Wakeup : public osapi::ThreadFunctor { //Testing wait
public:
  Wakeup(osapi::Conditional* cond, osapi::Mutex* mutex) : cond_(cond), m_(mutex){}

private:
  osapi::Conditional* cond_;
  osapi::Mutex* m_;

protected:
  void run(){
    while(1){
      m_->lock();
      cond_->wait(*m_); 
      std::cout << "FREEEEDOM!. Brb going back to blocking" << std::endl;
      m_->unlock();
    }
  }
};

class Notifier : public osapi::ThreadFunctor { //Testing signal
public:
  Notifier(osapi::Conditional* cond, osapi::Mutex* mutex) : cond_(cond), m_(mutex){}

private:
  osapi::Conditional* cond_;
  osapi::Mutex* m_;

protected:
  void run(){
    while(1){
      std::cout << "Signaling!" << std::endl;
      cond_->signal();
      osapi::sleep(2000);
    }
  }
};

int main(int argc, char* argv[]){
  osapi::Mutex mutex;
  osapi::Conditional cond;

  Wakeup* t1 = new Wakeup(&cond, &mutex);
  Notifier* t2 = new Notifier(&cond, &mutex);

  osapi::Thread yin(t1);
  osapi::Thread yang(t2);

  yin.start();
  yang.start();

  yin.join();
  yang.join();
}
