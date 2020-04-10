require conf/machine/include/tune-cortexa72-cortexa53.inc
require conf/machine/include/soc-family.inc

SOC_FAMILY = "rk3399"

MACHINE_FEATURES = "usbhost"
SERIAL_CONSOLES ?= "1500000;ttyS2"

PREFERRED_PROVIDER_virtual/kernel = "linux-mainline"
KERNEL_IMAGETYPE = "Image"

MACHINE_EXTRA_RRECOMMENDS += " \
	kernel-image-image \
	kernel-modules \
	kernel-devicetree \
	u-boot \
"

EXTRA_IMAGEDEPENDS += "u-boot"
WKS_FILE ?= "rk3399.wks"
IMAGE_FSTYPES ?= "tar.xz wic wic.bmap"

UBOOT_MAKE_TARGET = "all u-boot.itb"
UBOOT_SUFFIX = "itb"
SPL_BINARY = "idbloader.img"

ATF_PLATFORM ?= "rk3399"
ATF_TARGET ?= "bl31"
ATF_SUFFIX ?= "elf"

require uboot-distro.inc

UBOOT_EXTLINUX_CONSOLE = "console=ttyS2,1500000"
