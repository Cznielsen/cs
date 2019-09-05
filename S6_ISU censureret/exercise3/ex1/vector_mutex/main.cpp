#include <pthread.h>
#include <iostream>
#include <unistd.h> // Unix time
#include <cstdlib>
#include "vector.hpp"
using namespace std;

Vector* vector = new Vector;
// We initialize the mutex
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

static void *writer(void *arg){
  int *id = (int *) arg;
  int s;
  while (1){
    // We lock the mutex and check that it has been done correctly
    s = pthread_mutex_lock(&mutex);
    if (s != 0) { 
      cout << "pthread_mutex_lock failed!" << endl;
      exit(-1);
    }

    // Critical section
    bool test = vector->setAndTest((intptr_t)id);
    
    // We unlock the mutex and check whether it has been done correctly
    s = pthread_mutex_unlock(&mutex);
    if (s != 0) { 
      cout << "pthread_mutex_unlock failed!" << endl;
      exit(-1);
    }

    if (!test) {
      cout << "I am an error message, and setAndTest failed us all!" << endl;
      exit(-1);
    } else {
      cout << "Thread " << id << " survived!" << endl;
      sleep(1);
    }
  }
}

int main(int argc, char *argv[]){
	cout << "Main thread has been started by the overlords!" << endl;
  int threads = atoi(argv[1]);
  pthread_t tids [threads] = {};
  
  if (threads < 2 || threads > 100) {
    cout << "You need to specify a number between 2 and 100!" << endl;
    return 1;
  } 

  for (int i = 0; i < threads; ++i)
  {
    pthread_create(&tids[i], NULL, &writer, (void *) i);; 
  }

  for (int i = 0; i < threads; ++i)
  {
    pthread_join(tids[i], NULL); 
  }

  cout << "Program has terminated" << endl;
  return 0;
}
