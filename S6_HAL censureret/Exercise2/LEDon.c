#include <errno.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
	int fd;
	int ret = 0;
	
	fd = open("/sys/class/gpio/gpio20/value", O_RDWR);
	while(1){
		ret = write(fd, "1", 1);
		sleep(1);
		ret = write(fd, "0", 1);
		sleep(1);
	}
	close(fd);
	return ret;
}