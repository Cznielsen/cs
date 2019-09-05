#include <osapi/Utility.hpp>
#include <unistd.h>

namespace osapi{
  void sleep(unsigned long msecs){
    usleep(1000*msecs); // Sleep for 1 millisecond as msecs = milliseconds
  }
}
