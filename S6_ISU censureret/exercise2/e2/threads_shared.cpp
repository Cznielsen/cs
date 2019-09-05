#include <pthread.h>
#include <iostream>
#include <unistd.h> // Unix time
#include <sstream>
using namespace std;

unsigned int shared = 0;

static void *reader(void *arg){
  while (1){
    stringstream s;
    s << shared;
    string temp = s.str();
    cout << temp << endl;
    sleep(1);
  }
}

static void *incrementer(void *arg){
  while (1){
    shared++;
    sleep(1);
  }
}

int main(){
	cout << "Main thread has been started by the overlords!" << endl;
  pthread_t thread_1, thread_2;

  int t1 = pthread_create(&thread_1, NULL, &incrementer, new int(0));
  int t2 = pthread_create(&thread_2, NULL, &reader, new int(1));

  pthread_join(thread_1, NULL);
  cout << "Thread 1 has terminated" << endl;
  pthread_join(thread_2, NULL);
  cout << "Thread 2 has terminated" << endl;

  cout << "Program has terminated" << endl;
  return 0;
}
