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
#include <linux/timer.h>

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
struct class *test_class;
static dev_t devno;
struct timer_list timer;
static int gpio_no = 21;
int globalState = 1;
int globalRate = 1;

static void timer_funct(unsigned long funct_parameter) {
  printk(KERN_ALERT "Call to timer_funct");
  // Re-schedule the timer
  timer.expires = jiffies + globalRate*HZ;
  if(globalState == 1) {
    printk("Timer state is %d\n", globalState);
    add_timer(&timer);
  }

  int value = 1-gpio_get_value(gpio_no);
  gpio_set_value(gpio_no,value);
}

/* Sysfs "read" method prototype */
static ssize_t gpio_toggle_state_show(struct device *dev, struct device_attribute *attr, char *buf) {

  int len = sprintf(buf, "%d\n", globalState);
  printk("State show reads %i\n", globalState);
  return globalState;
}

/* Sysfs "write" method prototype */
static ssize_t gpio_toggle_state_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t size) {

  ssize_t ret = -EINVAL;
  int state;

  // Puts the buffer into the state variable
  int err = kstrtoint(buf, 0, &state);
  if (err<0) {
    printk(KERN_ALERT "Unable to parse string\n");
    return err;
  }
  
  printk("State store called with %i\n", state);
  globalState = state;

  if(state == 0) return size;

  // If state = 1, then toggling. If state = 0 then not toggling.
  init_timer(&timer);
  timer.expires = jiffies + globalRate*HZ;
  timer.function = timer_funct;
  add_timer(&timer);

  return size;
}

static ssize_t gpio_toggle_delay_show(struct device *dev, struct device_attribute *attr, char *buf) {

  int len = sprintf(buf, "%d\n\n", globalRate);  
  printk("Delay show reads %i\n", globalRate);
  return globalRate;
}

static ssize_t gpio_toggle_delay_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t size) {

  ssize_t ret = -EINVAL;
  int rate;

  int err = kstrtoint(buf, 0, &rate);
  if (err<0) {
    printk(KERN_ALERT "Unable to parse string\n");
    return err;
  }
  
  printk("Delay store called with %i\n", rate);

  globalRate = rate;
  
  return size;
}

DEVICE_ATTR_RW(gpio_toggle_state);
DEVICE_ATTR_RW(gpio_toggle_delay);
static struct attribute *gpio_attrs[] = { 
  &dev_attr_gpio_toggle_state.attr,
  &dev_attr_gpio_toggle_delay.attr,
  NULL, 
}; 
ATTRIBUTE_GROUPS(gpio);

static int my_devt_probe(struct platform_device *pdev){
  printk(KERN_DEBUG "hello from probe");

  init_timer(&timer);
  timer.expires = jiffies + globalRate*HZ;
  timer.function = timer_funct;
  add_timer(&timer);

  struct device *my_device = device_create(test_class, NULL, MKDEV(MAJOR(devno), 0), NULL, "mytestdriver%d", 0);
  
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
  
  device_destroy(test_class, MKDEV(MAJOR(devno), 0));

  return 0;
}

static const struct of_device_id test_platform_device_match[] =
  {
    {.compatible = "ase, plat_drv"}, {},
  };

static struct platform_driver test_platform_driver = {
  .probe = my_devt_probe,
  .remove = my_devt_remove,
  .driver = {
    .name = "test_class_old_naming",
    .of_match_table = test_platform_device_match,
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

  test_class = class_create(THIS_MODULE, "testshitz");
  test_class->dev_groups = gpio_groups;
  //test_device101 = device_create(test_class, NULL, MKDEV(MAJOR(devno), 0), NULL, "my_stuffyeah%d", 101);

  // Platform register here
  platform_driver_register(&test_platform_driver);

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
  class_destroy(test_class);
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
