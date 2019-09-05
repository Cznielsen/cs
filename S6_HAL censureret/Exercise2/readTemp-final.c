#include <errno.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>

int main(int argc, char *argv[])
{
	int fd, led, web, LEDret, webRET, n;
	int ret = 0;
	char rddata[4], str[16];
	char stringbuffer[100];
	
	fd = open("/dev/i2c-1", O_RDWR);
	led = open("/sys/class/gpio/gpio20/value", O_RDWR);

	ret = ioctl(fd, 0x0703, 0x48);
	LEDret = 0;

	while(1){
		ret = read(fd, rddata, 1);
		printf("Temperature: %i degC\n", rddata[0]);

		web = open("/www/pages/index.html", O_WRONLY | O_TRUNC);
		n = sprintf(stringbuffer, "<html><body><h1>Temperature: %i degC</h1></body></html>", rddata[0]);
		webRET = write(web, stringbuffer, n);
		close(web);

		if(rddata[0]>30){
			LEDret = write(led, "1", 1);
			printf("Warning! It's too hot\n!");
		}
		else{
			LEDret = write(led, "0", 1);
		}

		sleep(1);
	}
	close(fd);
	close(led);
	return ret;
}