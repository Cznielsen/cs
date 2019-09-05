SOURCES = $(wildcard *.cpp)
OBJECTS = $(SOURCES:.cpp=.o)
EXE = part

all : $(EXE)

$(EXE) : $(OBJECTS)
	$(CXX) -o $(EXE) $^

%.o: %.cpp %.h
	$(CXX) -c $< -o $@

clean :
	rm $(EXE) *.o

help :
	echo "To run target all do 'make all' \n To clean binary files do 'make clean' \n to view help do 'make help'."
