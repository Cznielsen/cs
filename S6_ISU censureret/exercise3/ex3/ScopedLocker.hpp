#ifndef SCOPEDLOCKER_HPP_
#define SCOPEDLOCKER_HPP_

#include <pthread.h>
#include <iostream>
#include <cstdlib>
using namespace std;

class ScopedLocker {
	pthread_mutex_t *mutex;
public:
	ScopedLocker(pthread_mutex_t* mtx) : mutex(mtx) {
		int s;
		// Lock the mutex in our constructor
		s = pthread_mutex_lock(mutex);  
		if (s != 0) { 
      		cout << "pthread_mutex_lock failed!" << endl;
      		exit(-1);
    	}
	}

	~ScopedLocker() {
		int s;
		// Unlock the mutex when the object is destroyed
		s = pthread_mutex_unlock(mutex);
		if (s != 0) { 
      		cout << "pthread_mutex_lock failed!" << endl;
      		exit(-1);
    	}
	}	
};

#endif