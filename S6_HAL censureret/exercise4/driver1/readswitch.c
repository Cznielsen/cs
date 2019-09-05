// LED3 = GPIO21 og SW2 = BTN1 = GPIO16

#include <linux/gpio.h> 
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <asm/uaccess.h>
#include <linux/module.h>

#define BTN_MAJOR 64
#define BTN_MINOR 0
#define NO_OF_DEVICES 1
#define GPIO 16

MODULE_LICENSE("GPL");
MODULE_AUTHOR("weeabros");
MODULE_DESCRIPTION("A driver that reads the input from SW2 and responds with whether it is pressed down or not.");

static struct cdev my_cdev;
struct file_operations my_fops;
static int devno;

// DRIVER INIT
static int mygpio_init(void){
// err var
	int err = 0; 

// Request GPIO
	err = gpio_request(GPIO, NULL);
	if (err < 0){
		goto err_gpio_req;
	}
// Set GPIO direction (in or out)
	err = gpio_direction_input(GPIO);
	if (err < 0){
		goto err_gpio_direction;
	}

// Make device no (vælg - Enten bruger I statisk eller også bruger I dynamisk major/minor nummer allokering) 
devno = MKDEV(BTN_MAJOR, BTN_MINOR); //give dev number (declared outside method)

// Register Device
err = register_chrdev_region(devno, NO_OF_DEVICES, "sw2");
if (err < 0){
	goto err_register;
}

// Cdev Init
cdev_init(&my_cdev, &my_fops);

// Add Cdev
err = cdev_add(&my_cdev, devno, NO_OF_DEVICES); // Check for failiure!!!
if (err < 0){
	goto err_dev_unregister;
}

printk(KERN_ALERT "Successfully loaded driver!");
return 0; // Success!!!

//Error gotos
err_dev_unregister:
cdev_del(&my_cdev);

err_register:
unregister_chrdev_region(devno, NO_OF_DEVICES);

err_gpio_direction:
gpio_free(GPIO);

err_gpio_req:
printk(KERN_ALERT, "Error :(");
return err;
}

static void mygpio_exit(void)
{
 // Delete Cdev
	cdev_del(&my_cdev);
 // Unregister Device
	unregister_chrdev_region(devno, NO_OF_DEVICES);
 // Free GPIO
	gpio_free(GPIO);
	printk(KERN_ALERT "Driver successfully removed!");
}


int mygpio_open(struct inode *inode, struct file *filep)
{
	int major, minor;
	major = MAJOR(inode->i_rdev);
	minor = MINOR(inode->i_rdev);
	printk("Opening MyGpio Device [major], [minor]: %i, %i\n", major, minor);
	return 0;
}

int mygpio_release(struct inode *inode, struct file *filep)
{
	int minor, major;

	major = MAJOR(inode->i_rdev);
	minor = MINOR(inode->i_rdev);
	printk("Closing/Releasing MyGpio Device [major], [minor]: %i, %i\n", major, minor);

	return 0;
}

// Inspireret meget af slides. Vi bruger sprintf til type conversion.
ssize_t mygpio_read(struct file *filep, char __user *buf, 
	size_t count, loff_t *f_pos)
{
 // Hvilke trin er det der skal udføres?
 // Hint konvertering fra int til string kan gøres via sprintf() - antagelsen er at det er strenge der sendes til og fra user space. Det gør debugging lettere.
	int number = gpio_get_value(GPIO);
	char my_buf[8];
	sprintf(my_buf, "%i", number); //conversion
	int my_buf_len = strlen(my_buf) + 1;
	my_buf_len =  my_buf_len > count ? count : my_buf_len; // trunctate (pr slides)
	long err = copy_to_user(buf, my_buf, my_buf_len); // To ensure that user and kernel memory doesn't overlap.
	if (err > 0){
		printk(KERN_ALERT "failed copy to user");
	}

	*f_pos += my_buf_len;
	return my_buf_len;    
}



module_init(mygpio_init);
module_exit(mygpio_exit);
struct file_operations my_fops = {
	.owner = THIS_MODULE,
	.open = mygpio_open,
	.release = mygpio_release,
	.read = mygpio_read
};