#include <pthread.h>
#include <iostream>
#include <unistd.h> // Unix time
#include <cstdlib>
#include <semaphore.h>
#include "vector.hpp"
using namespace std;

Vector* vector = new Vector;
sem_t mutex;

static void *writer(void *arg){
  int *id = (int *) arg;
  
  while (1){
    // We lock the semaphore
    sem_wait(&mutex);
    // Critical section
    bool test = vector->setAndTest((intptr_t)id);
    // We open the semaphore again after having finished work on the vector
    sem_post(&mutex);

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
  // We initialise the semaphore
  sem_init(&mutex, 0, 1);
  
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

  // We destroy the semaphore before the program terminates
  sem_destroy(&mutex);
  cout << "Program has terminated" << endl;
  return 0;
}
