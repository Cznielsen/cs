#include <iostream>
#include <pthread.h>
#include <stdlib.h>
#include <cstdlib>
#include <queue>
#include <unistd.h>
#include <string>
#include <sstream>
using namespace std;

static pthread_mutex_t mtx PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t sender_cond PTHREAD_COND_INITIALIZER;
static pthread_cond_t receiver_cond PTHREAD_COND_INITIALIZER;


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
    pthread_mutex_lock(&mtx);
    
    while (msg_queue.size() == queue_size){
      cout << "Queue full. Blocking ..." << endl;
      pthread_cond_wait(&sender_cond, &mtx);  // block if queue full
    }
    
    cout << "Kø ikke fuld. go!" << endl;
    msg_queue.push(msg);  // push to queue
    cout << "Pushet message til queue" << endl;
    pthread_mutex_unlock(&mtx);
  }

  Message* receive(unsigned long& id){
    pthread_mutex_lock(&mtx);
    
    while (msg_queue.empty()){
      cout << "Queue empty. Blocking ..." << endl;
      pthread_cond_wait(&receiver_cond, &mtx);
    }
    
    Message* msg = msg_queue.queue::front();
    msg_queue.pop();
    
    pthread_mutex_unlock(&mtx);
    return NULL;
    
}

  ~MsgQueue(){ // unlock if deconstructed
    pthread_mutex_unlock(&mtx);
}

private:
  // Container with messages
  queue<Message*> msg_queue;  // vi bruger en queue
  // Plus other relevant variables
  unsigned long queue_size;
};

enum {
  P3D
};

struct Point3D : public Message{
    int x;
    int y;
    int z;
};

static void* sender(void* msg_queue){
  MsgQueue* mq = static_cast<MsgQueue*>(msg_queue);
    while (1){
        int i = 0;
        
        Point3D* msg = new Point3D();
        msg->x = i;
        msg->y = i;
        msg->z = i;
        
        mq->send(P3D, msg);
        i++;
        sleep(1);
    }
}

string handler(Message* msg, unsigned long id){
  switch(id){
  case P3D: {
    Point3D* p3d_msg = static_cast<Point3D *>(msg);
    cout << "Point3D:" << endl;
    cout << p3d_msg->x << endl;
    cout << p3d_msg->y << endl;
    cout << p3d_msg->z << endl;
    break;
  }
  };
}

static void* receiver(void* msg_queue){
  MsgQueue* mq = static_cast<MsgQueue*>(msg_queue);
  while(1){
    unsigned long id;    
    Message* msg = mq->receive(id);
    string result = handler(msg, id);
    delete msg;
  }
}


int main() {
  cout << "Lets go!" << endl;
  // int queue_size = atoi(argv[1]);

  unsigned long max_size;
  max_size = 100;

  cout << "Creating msgqueue" << endl;
  MsgQueue* msg_queue = new MsgQueue(100);
  cout << "Created msgqueue" << endl;
  

  pthread_t thread_sender;
  pthread_t thread_receiver;

  cout << "Creating sender" << endl;
  pthread_create(&thread_sender, NULL, sender, &msg_queue);
  cout << "Created sender" << endl;
  cout << "Creating receiver" << endl;
  pthread_create(&thread_receiver, NULL, receiver, &msg_queue);
  cout << "Created receiver" << endl;

  
  pthread_join(thread_sender, NULL);
  pthread_join(thread_receiver, NULL);
  
  cout << "Program ended" << endl;
  
  return 0;
}
