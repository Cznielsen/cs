SOURCES=main.cpp part1.cpp part2.cpp
OBJECTS=$(SOURCES:.cpp=.o)
DEPS=$(SOURCES:.cpp=.d)
EXE=prog
CXXFLAGS=-I.

# Making for host
# > make ARCH=host
ifeq (${ARCH},host)
CXX=g++
BUILD_DIR=build/host/
EXE_DIR=bin/host/
endif

# Making for target
# > make ARCH=target
ifeq (${ARCH},target)
CXX=arm-rpizw-g++
BUILD_DIR=build/target/
EXE_DIR=bin/target/
endif



${EXE_DIR}$(EXE): $(addprefix $(BUILD_DIR), $(DEPS)) $(addprefix $(BUILD_DIR), $(OBJECTS))
	mkdir -p $(EXE_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $(addprefix $(BUILD_DIR), $(OBJECTS))

# Rule that describes how a .d (dependency) file is created from a .cpp file
# Similar to the assigment that you just completed %.cpp -> %.o
${BUILD_DIR}%.d: %.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) -MT$(@:.d=.o) -MM $(CXXFLAGS) $^ > $@

${BUILD_DIR}%.o: %.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $^ -o $@

ifneq ($(MAKECMDGOALS),clean)
-include $(DEPS)
endif

clean :
	rm -r build bin
