#include <pthread.h>
#include <iostream>
#include <cstdlib>
#include <stdlib.h>
#include <unistd.h>
using namespace std;

bool entry_door_open = false;
bool exit_door_open = false;
static pthread_cond_t cond_entry PTHREAD_COND_INITIALIZER;
static pthread_cond_t cond_exit PTHREAD_COND_INITIALIZER;
static pthread_mutex_t mutex_entry PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t mutex_exit PTHREAD_MUTEX_INITIALIZER;
bool let_me_in = false;
bool let_me_out = false;
int spaces = 3;

void *entry(void *params){
  while(1){
    pthread_mutex_lock(&mutex_entry); 
    if (spaces == 0) {
      cout << "No more spaces left: " << spaces << endl;
    }               // Aquire lock
    while(!let_me_in || spaces < 1){
      pthread_cond_wait(&cond_entry, &mutex_entry);  // Wait if no one wants to enter the garage
    }                                                // or no more spaces are left
    cout << "Opening entry door" << endl;
    entry_door_open = true;                          // Open the door
    pthread_cond_signal(&cond_entry);                // Signal the car that the door is open
    while(let_me_in){
      pthread_cond_wait(&cond_entry, &mutex_entry);  // Wait while car enters garage
    }
    spaces--;
    cout << "Spaces left: " << spaces << endl;
    entry_door_open = false;                         // Close the door after the car has entered
    cout << "Closing entry door" << endl;
    pthread_mutex_unlock(&mutex_entry);              // Force release lock
    }
  }

void *exit(void *params){
  while(1){
    pthread_mutex_lock(&mutex_exit);                 // Aquire lock
    while(!let_me_out){
      pthread_cond_wait(&cond_exit, &mutex_exit);    // Wait if no one wants to leave the garage
    }
    cout << "Opening exit door" << endl;             
    exit_door_open = true;                           // Open the door since someone wants to leave garage
    pthread_cond_signal(&cond_exit);                 // Signal the car to leave the garage
    while(let_me_out){
      pthread_cond_wait(&cond_exit, &mutex_exit);    // Wait while the car drives out
    }
    spaces++;
    cout << "Spaces left: " << spaces << endl;
    cout << "Closing exit door" << endl;
    exit_door_open = false;                          // close the door after the car has left
    pthread_mutex_unlock(&mutex_exit);               // Force release lock
  }
}

void *car(void *params){
  int *id = (int *) params;
  while(1){
    pthread_mutex_lock(&mutex_entry);                                   // Aquire lock
    cout << "Car " << *id <<" entry lock aquired" << endl;
    let_me_in = true;                                                   // Raise flag to let entry know know that a car wants to enter
    pthread_cond_signal(&cond_entry);                                   // Signal this to the entry method.
    while(!entry_door_open){
      pthread_cond_wait(&cond_entry, &mutex_entry);                     // Wait for the entry method to open the door
    }
    cout << "Car " << *id << " drives inside parking garage." << endl;
    let_me_in = false;                                                  // Lower flag to let entry know that the car is inside
    pthread_cond_signal(&cond_entry);                                   // Signal this to the entry method
    pthread_mutex_unlock(&mutex_entry);                                 // Already inside, doens't need lock anymore.
    cout << "Car " << *id <<" entry lock released" << endl;
      
    sleep(rand() % 8);                                                           // Wait inside garage. Not necessary, only added for reality.

    pthread_mutex_lock(&mutex_exit);                                    // Aquire lock
    cout << "Car " << *id << " exit lock aquired" << endl;
    let_me_out = true;                                                  // Raise flag to let exit know that a car wants to exit.
    pthread_cond_signal(&cond_exit);                                    // Signal this to the exit method.
    while(!exit_door_open){
      pthread_cond_wait(&cond_exit, &mutex_exit);                       // Wait for the entry method to open the door
    }
    cout << "Car " << *id << " drives out of the parking garage." << endl;
    let_me_out = false;                                                 // Lower flag to let exit know that the car has left
    pthread_cond_signal(&cond_exit);                                    // Signal this to the exit.
    pthread_mutex_unlock(&mutex_exit);                                  // Car has left garage. Doesn't need lock anymore.
    cout << "Car " << *id <<" exit lock released" << endl;
    
  }
}

int main(int argc, char *argv[]){
    cout << "Lets go!" << endl;
    int no_of_threads = atoi(argv[1]); // number of threads to be created
    
    pthread_t cars[no_of_threads] = {};
    pthread_t thread_entry;
    pthread_t thread_exit;
    
    pthread_create(&thread_entry, NULL, &entry, NULL);
    pthread_create(&thread_exit, NULL, &exit, NULL);
    
    for (int i = 0; i<no_of_threads; i++){
      pthread_create(&cars[i], NULL, &car, new int(i));   // Apparently, '(void *)' doesn't work when passing argument
                                                          // (as it did in the last assignment), but new int(i) does.
    }


    pthread_join(thread_entry, NULL);
    pthread_join(thread_exit, NULL);
    for (int i = 0; i<no_of_threads; i++){
      pthread_join(cars[i], NULL);
    }
    

    cout << "Program ended" << endl;
    return 0;
}
