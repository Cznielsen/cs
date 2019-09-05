#include <errno.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>

int main(int argc, char *argv[])
{
	int fd;
	int ret = 0;
	char rddata[4], str[16];
	
	fd = open("/dev/i2c-1", O_RDWR);

	ret = ioctl(fd, 0x0703, 0x48);

	while(1){
		ret = read(fd, rddata, 1);
		printf("Temperature: %i degC\n", rddata[0]);
		sleep(1);
	}
	close(fd);
	return ret;
}