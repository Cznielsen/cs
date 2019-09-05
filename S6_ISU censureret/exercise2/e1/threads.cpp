#include <pthread.h>
#include <iostream>
#include <string>
#include <sstream>
using namespace std;

void *thread(void *arg){
  int *id = (int *) arg;
  for (int i=0; i<10; i++){
    stringstream s;
    s << "#" << i << " My ID number is: " << id << "\n";
    string temp = s.str();
    cout << temp;
  }
}

int main(){
  pthread_t thread_1, thread_2;

  int t1 = pthread_create(&thread_1, NULL, &thread, (void *) 1);
  int t2 = pthread_create(&thread_2, NULL, &thread, (void *) 2);

  pthread_join(thread_1, NULL);
  cout << "Thread 1 has terminated \n";
  pthread_join(thread_2, NULL);
  cout << "Thread 2 has terminated \n";

  cout << "Program has terminated \n";
  return 0;
}
