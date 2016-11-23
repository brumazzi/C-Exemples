#include </lib/modules/3.12.9-201.fc19.x86_64/build/include/linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

MODULE_LICENSE("GLP");
MODULE_AUTHOR("Brumazzi");
MODULE_DESCRIPTION("\"Hello worl!\" exemple.");

static int __init hellow_init(void){
	printk(KERN_INFO "Hellow!\n");
	return 0;
}

static void __exit hellow_cleanup(void){
	printk(KERN_INFO "kernel exit.\n");
}

module_init(hellow_init);
module_exit(hellow_cleanup);
