FILESEXTRAPATHS_prepend := "${THISDIR}/${MACHINE}:"

DEPENDS_append_sun8i-s3-pinecube = " python3-setuptools-native"
SRCREV_sun8i-s3-pinecube = "896cc5aa4a8fc0c28036b9615a37f0034addad44"

SRC_URI_sun8i-s3-pinecube = " \
	git://github.com/u-boot/u-boot.git \	
	file://0001-sunxi-add-V3-S3-support.patch \
	file://0002-sunxi-gpio-introduce-compatible-string-for-V3-GPIO.patch \
	file://0003-clk-sunxi-add-compatible-string-for-V3.patch \
	file://0004-sunxi-allow-to-use-AXP20-39-attached-to-I2C0-on-V3-s.patch \
	file://0005-sunxi-dts-sync-Allwinner-V3s-related-DTs-from-Linux-.patch \
	file://0006-sunxi-add-PineCube-board.patch \
	file://0007-mtd-spi-nor-ids-add-XTX-xt25f32b-xt25f128b-flash.patch \
	file://0008-pinecube-enable-ethernet-SPI-booting-flashing.patch \
"

ATF_DEPENDS ??= ""

EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"

do_compile[depends] += "${ATF_DEPENDS}"
