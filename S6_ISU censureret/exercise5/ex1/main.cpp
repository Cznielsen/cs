#include <iostream>
#include <pthread.h>
#include <stdlib.h>
#include <cstdlib>
#include <queue>
#include <unistd.h>
#include <string>
using namespace std;

static pthread_mutex_t sender_lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t receiver_lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t sender_cond = PTHREAD_COND_INITIALIZER;
static pthread_cond_t receiver_cond = PTHREAD_COND_INITIALIZER;

class Message {
public:
    virtual ~Message(){}
};

class MsgQueue{
public:
  MsgQueue(unsigned long maxSize){
    queue_size = maxSize;
  }
  void send(unsigned long id, Message* msg){
    pthread_mutex_lock(&sender_lock);
    cout << "Har taget lås. Tjekker om kø er fuld" << endl;

    while (msg_queue.size() == queue_size){
      cout << "Queue full. Blocking ..." << endl;
      pthread_cond_wait(&sender_cond, &sender_lock);  // block if queue full
    }

    cout << "Kø ikke fuld. go!" << endl;
     msg_queue.push(msg);  // push to queue
    cout << "Pushet message til queue" << endl;
    pthread_mutex_unlock(&sender_lock);
  }

  Message* receive(unsigned long& id){
    pthread_mutex_lock(&receiver_lock);
    while (msg_queue.empty()){
      cout << "Queue empty. Blocking ..." << endl;
      pthread_cond_wait(&receiver_cond, &receiver_lock);
    }

    Message* msg = msg_queue.queue::front();
    msg_queue.pop();

    pthread_mutex_unlock(&receiver_lock);
    return msg;

}

  ~MsgQueue(){ // unlock if deconstructed
    pthread_mutex_unlock(&sender_lock);
    pthread_mutex_unlock(&receiver_lock);
}

private:
  // Container with messages
  queue<Message*> msg_queue;  // vi bruger en queue
  // Plus other relevant variables
  unsigned long queue_size;
};
