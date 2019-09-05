// LED3 = GPIO21 og SW2 = BTN1 = GPIO16

#include <linux/gpio.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <asm/uaccess.h>
#include <linux/module.h>
#include <linux/of_gpio.h>
#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_irq.h>
//#include <platform_device.h>

#define BTN_MAJOR 64
#define BTN_MINOR 0
#define NO_OF_DEVICES 1
#define GPIO 21
#define LABEL_NAME "WOWOWOWOWOW-LED"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("weeabros");
MODULE_DESCRIPTION("A driver that reads the input from SW2 and responds with whether it is pressed down or not.");

static struct cdev my_cdev;
struct file_operations my_fops;
struct class *gpio_class;
static dev_t devno;

static int my_devt_probe(struct platform_device *pdev){
  printk(KERN_DEBUG "hello from probe");
  struct device *my_device = device_create(gpio_class, NULL, MKDEV(MAJOR(devno), 0), NULL, "mygpiodriver%d", 0);
  if(IS_ERR(my_device)) {
    printk(KERN_ALERT "Failed to create device\n");
    return -EFAULT;
  } else {
    printk(KERN_ALERT "Created device\n");
  }
  return 0;
}

static int my_devt_remove(struct platform_device *pdev){
  printk(KERN_DEBUG "hello from remove");
  device_destroy(gpio_class, MKDEV(MAJOR(devno), 0));
  return 0;
}

static const struct of_device_id gpio_platform_device_match[] =
  {
    {.compatible = "ase, plat_drv"}, {},
  };

static struct platform_driver gpio_platform_driver = {
  .probe = my_devt_probe,
  .remove = my_devt_remove,
  .driver = {
    .name = "gpio_old_naming",
    .of_match_table = gpio_platform_device_match,
    .owner = THIS_MODULE, },
};

// DRIVER INIT
static int mygpio_init(void){
  // err var
  int err = 0;

  // Request GPIO
  err = gpio_request(GPIO, LABEL_NAME);
  if (err < 0){
    goto err_gpio_req;
  }
  // Set GPIO direction (in or out)
  gpio_direction_output(GPIO, 0);

  // Device No
  err = alloc_chrdev_region(&devno, 0, NO_OF_DEVICES, LABEL_NAME);
  if (err < 0){
    goto err_register;
  }

  printk(KERN_ALERT "Got major number %i\n", MAJOR(devno));


  // Cdev Init
  cdev_init(&my_cdev, &my_fops);

  // Add Cdev
  err = cdev_add(&my_cdev, devno, NO_OF_DEVICES); // Check for failiure!!!
  if (err < 0){
    goto err_dev_unregister;
  }

  gpio_class = class_create(THIS_MODULE, "gpio_class");

  // Platform register here
  platform_driver_register(&gpio_platform_driver);

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
  class_destroy(gpio_class);
  
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

ssize_t mygpio_write(struct file *filep, const char __user *ubuf, size_t count, loff_t *f_pos)
{
    int ledStatus;
    int maxLength = 8;
    char my_buf[maxLength];
    int my_buf_len = maxLength - 1;
    unsigned long err = 0;

    my_buf_len = my_buf_len > count ? count : my_buf_len;
    err = copy_from_user(my_buf, ubuf, my_buf_len);
    if (err > 0)
        printk(KERN_ALERT "copy_from_user error: %lu bytes could not be copied", err);

    sscanf(my_buf, "%i", &ledStatus);
    gpio_set_value(GPIO, ledStatus);

    *f_pos += count;
    return count;
}



module_init(mygpio_init);
module_exit(mygpio_exit);
struct file_operations my_fops = {
  .owner = THIS_MODULE,
  .open = mygpio_open,
  .release = mygpio_release,
  .write = mygpio_write
};
