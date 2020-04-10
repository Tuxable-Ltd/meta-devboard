require conf/machine/include/tune-cortexa7.inc
require conf/machine/include/soc-family.inc

SOC_FAMILY = "sun8i-s3"

MACHINE_FEATURES = "usbhost"
SERIAL_CONSOLES ?= "115200;ttyS2"

KERNEL_IMAGETYPE = "zImage"
KBUILD_DEFCONFIG = "multi_v7_defconfig"

require kernel-version.inc

MACHINE_EXTRA_RRECOMMENDS += " \
	kernel-image \
	kernel-modules \
	kernel-devicetree \
	u-boot \
"

EXTRA_IMAGEDEPENDS += "u-boot"
WKS_FILE ?= "sun8i.wks.in"
IMAGE_FSTYPES ?= "tar.xz wic wic.bmap"

SPL_BINARY = "u-boot-sunxi-with-spl.bin"

require uboot-distro.inc

UBOOT_EXTLINUX_CONSOLE = "console=ttyS2,115200"
