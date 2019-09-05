// LED3 = GPIO21
// SW2 = BTN1 = GPIO16
// SW1 = BTN0 = GPIO12

#include <linux/gpio.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <asm/uaccess.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/wait.h>
#include <linux/sched.h>

#define ITRPT_MAJOR 64
#define ITRPT_MINOR 0
#define NO_OF_DEVICES 1
#define GPIO 12
#define LABEL "interruptSwitch"

/*
* These correspond to the IORESOURCE_IRQ_* defines in
* linux/ioport.h to select the interrupt line behaviour. When
* requesting an interrupt without specifying a IRQF_TRIGGER, the
* setting should be assumed to be "as already configured", which
* may be as per machine or firmware initialisation.
*/
#define IRQF_TRIGGER_NONE 0x00000000
#define IRQF_TRIGGER_RISING 0x00000001
#define IRQF_TRIGGER_FALLING 0x00000002
#define IRQF_TRIGGER_HIGH 0x00000004
#define IRQF_TRIGGER_LOW 0x00000008
#define IRQF_TRIGGER_MASK (IRQF_TRIGGER_HIGH | IRQF_TRIGGER_LOW | \
IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING)
#define IRQF_TRIGGER_PROBE 0x00000010
#define LABEL "interruptSwitch"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("weeabros");
MODULE_DESCRIPTION("A driver that reads the input from SW2, but sleeps until there's data to read");

static struct cdev my_cdev;
struct file_operations my_fops;
static int devno;
static DECLARE_WAIT_QUEUE_HEAD(wq);
static int flag = 0;
static int irq;
static int irq_cnt = 0;

static irqreturn_t mygpio_isr(int irq, void *dev_id){
    printk("IRQ event %i\n", irq_cnt++);
    flag = 1;
    wake_up_interruptible(&wq);
    return IRQ_HANDLED;
  }

// DRIVER INIT
static int mygpio_init(void){
    // err var
    int err = 0;

    // Request GPIO
    err = gpio_request(GPIO, LABEL);
    if (err < 0){
        goto err_gpio_req;
    }
    // Set GPIO direction (in or out)
    err = gpio_direction_input(GPIO);
    if (err < 0){
        goto err_gpio_direction;
    }

    devno = MKDEV(ITRPT_MAJOR, ITRPT_MINOR);
    err=register_chrdev_region(devno, NO_OF_DEVICES, LABEL);
    if(err < 0){
        printk(KERN_ALERT "Can't register major number %i\n", ITRPT_MINOR);
        goto err_register;
    }

    cdev_init(&my_cdev, &my_fops);
    err = cdev_add(&my_cdev, devno, NO_OF_DEVICES);
    if (err) {
        printk (KERN_ALERT "ERROR %d adding interrupt device\n", err);
        goto err_dev_unregister;
    }

    irq = gpio_to_irq(GPIO);

    int test;
    test = request_irq(irq, mygpio_isr, IRQF_TRIGGER_RISING, "my_irq", NULL);
    printk(KERN_ALERT "It works! Irq number %d\n", irq);
    return 0;

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
 // Free irq
  free_irq(irq, NULL);
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
  wait_event_interruptible(wq, flag == 1);

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
  flag = 0;
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
