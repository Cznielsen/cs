#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xf3252e61, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x9ad9fb49, __VMLINUX_SYMBOL_STR(class_destroy) },
	{ 0x7485e15e, __VMLINUX_SYMBOL_STR(unregister_chrdev_region) },
	{ 0x3db8e9c4, __VMLINUX_SYMBOL_STR(cdev_del) },
	{ 0x681b4525, __VMLINUX_SYMBOL_STR(__platform_driver_register) },
	{ 0xc18ae2fd, __VMLINUX_SYMBOL_STR(__class_create) },
	{ 0x209233a4, __VMLINUX_SYMBOL_STR(cdev_add) },
	{ 0x4415b269, __VMLINUX_SYMBOL_STR(cdev_init) },
	{ 0x29537c9e, __VMLINUX_SYMBOL_STR(alloc_chrdev_region) },
	{ 0x20bf2a91, __VMLINUX_SYMBOL_STR(gpiod_direction_input) },
	{ 0x47229b5c, __VMLINUX_SYMBOL_STR(gpio_request) },
	{ 0xf2162b1e, __VMLINUX_SYMBOL_STR(device_create) },
	{ 0x7430435d, __VMLINUX_SYMBOL_STR(gpiod_direction_output_raw) },
	{ 0x1a12cfd4, __VMLINUX_SYMBOL_STR(of_get_named_gpio_flags) },
	{ 0x9ab935c1, __VMLINUX_SYMBOL_STR(of_count_phandle_with_args) },
	{ 0xfe990052, __VMLINUX_SYMBOL_STR(gpio_free) },
	{ 0xf289f0ca, __VMLINUX_SYMBOL_STR(device_destroy) },
	{ 0xfa2a45e, __VMLINUX_SYMBOL_STR(__memzero) },
	{ 0xe93f3f1a, __VMLINUX_SYMBOL_STR(gpiod_set_raw_value) },
	{ 0xe84de49c, __VMLINUX_SYMBOL_STR(gpio_to_desc) },
	{ 0x20c55ae0, __VMLINUX_SYMBOL_STR(sscanf) },
	{ 0x28cc25db, __VMLINUX_SYMBOL_STR(arm_copy_from_user) },
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xb1ad28e0, __VMLINUX_SYMBOL_STR(__gnu_mcount_nc) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "CEDD3EFD5EA059C5A1EF8EA");
