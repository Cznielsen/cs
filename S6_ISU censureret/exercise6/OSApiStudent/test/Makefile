SRCS=main.cpp
BASEPATH=..
# Determine whether this is a debug build or not
ifdef DEBUG
CFLAGS=-ggdb -O0
LIBPATH=$(BASEPATH)/lib/host/debug
else
CFLAGS=-O2
LIBPATH=$(BASEPATH)/host/release
endif
# Setup the CFLAGS to ensure that the relevant warnings, includes and defines.
CFLAGS+=-Wall -D_REENTRANT -DOS_LINUX -I$(BASEPATH)/inc

# Note how the flags are part of the compilation of .cpp file(s).
main.o: $(SRCS)
	g++ $(CFLAGS) -c main.cpp

# Then again, note how the flags are NOT part of the linking process
main: main.o
	g++ -o main main.o -L$(LIBPATH) -lOSApi -lrt -lpthread

all: main

clean:
	rm -f *.o main


mutex: mutex.o
	g++ -o testmutex mutex.o -L$(LIBPATH) -lOSApi -lrt -lpthread

mutex.o: TestMutex.cpp
	g++ $(CFLAGS) -o mutex.o -c TestMutex.cpp

cond: cond.o
	g++ -o testcond cond.o -L$(LIBPATH) -lOSApi -lrt -lpthread

cond.o: TestCond.cpp
	g++ $(CFLAGS) -o cond.o -c TestCond.cpp

thread: thread.o
	g++ -o testthread thread.o -L$(LIBPATH) -lOSApi -lrt -lpthread

thread.o: TestThread.cpp
	g++ $(CFLAGS) -o thread.o -c TestThread.cpp

time: time.o
	g++ -o testtime time.o -L$(LIBPATH) -lOSApi -lrt -lpthread

time.o: TestTime.cpp
	g++ $(CFLAGS) -o time.o -c TestTime.cpp
