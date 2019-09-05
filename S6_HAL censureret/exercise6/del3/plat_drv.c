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
#include <linux/err.h>
#include <linux/platform_device.h>

#define BTN_MAJOR 64
#define BTN_MINOR 0
#define NO_OF_DEVICES 3
#define GPIO 21
#define LABEL_NAME "GPIODriver"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("weeabros");
MODULE_DESCRIPTION("A driver that reads the input from SW2 and responds with whether it is pressed down or not.");

static struct cdev my_cdev;
struct file_operations my_fops;
struct class *gpio_class;
static dev_t devno;

struct gpio_dev {
  int no;
  int dir;
};
static struct gpio_dev gpio_devs[255];
int gpio_devs_cnt = 0;
//static int gpios_len = 3;

static int my_devt_probe(struct platform_device *pdev){
  printk(KERN_DEBUG "hello from probe");
  // err var
  int err = 0;
  
  struct device *dev = &pdev->dev;
  struct device_node *np = dev->of_node;
  enum of_gpio_flags flag;
  int gpios_in_dt = 0;
  
  gpios_in_dt = of_gpio_count(np);

  for (int i = 0; i < gpios_in_dt; i++) {
    gpio_devs[i].no = of_get_gpio(np, i);
    of_get_gpio_flags(np, i, &flag);
    gpio_devs[i].dir = flag;
  }
  
  for (int i = 0; i < gpios_in_dt; i++) {    
    // Request GPIO
    err = gpio_request(gpio_devs[i].no, LABEL_NAME);
    if (err < 0){
      goto err_gpio_req;
    }
    
    // Set GPIO direction (in or out)
    if (gpio_devs[i].dir) {
      gpio_direction_output(gpio_devs[i].no, 1);
    } else {
      gpio_direction_input(gpio_devs[i].no);
    }
    
    struct device *my_device = device_create(gpio_class, NULL, MKDEV(MAJOR(devno), i), NULL, "mygpiodriver%d", gpio_devs[i].no);
    if(IS_ERR(my_device)) {
      printk(KERN_ALERT "Failed to create device\n");
      return -EFAULT;
    } else {
      printk(KERN_ALERT "Created device %i with major no. %i and minor no. %i and direction %i\n", gpio_devs[i].no, MAJOR(devno), i, gpio_devs[i].dir);
    }

    gpio_devs_cnt++;
  }
  return 0;

 err_gpio_req:
  printk(KERN_ALERT, "Error :(");
  return err;
  
}

static int my_devt_remove(struct platform_device *pdev){
  printk(KERN_DEBUG "hello from remove");
  for (int i = 0; i < gpio_devs_cnt; i++) {
    device_destroy(gpio_class, MKDEV(MAJOR(devno), i));
    gpio_free(gpio_devs[i].no);
  }
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
  int err = 0;

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

    int minor; //New
    minor = iminor(filep->f_inode); //New
    if(gpio_devs[minor].dir == 1) { //New
      my_buf_len = my_buf_len > count ? count : my_buf_len;

      err = copy_from_user(my_buf, ubuf, my_buf_len);
      if (err > 0)
	printk(KERN_ALERT "copy_from_user error: %lu bytes could not be copied", err);
      
      sscanf(my_buf, "%i", &ledStatus);
      gpio_set_value(gpio_devs[minor].no, ledStatus);
      
      *f_pos += count;
    }
   
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
