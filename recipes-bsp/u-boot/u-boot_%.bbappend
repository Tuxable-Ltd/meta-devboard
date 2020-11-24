FILESEXTRAPATHS_prepend := "${THISDIR}/${MACHINE}:"

DEPENDS_append_sun8i-s3-pinecube = " python3-setuptools-native"
SRCREV_sun8i-s3-pinecube = "1ae955e3a58f46918ef99b0b6c562967ba1bf39e"

SRC_URI_sun8i-s3-pinecube = " \
	git://github.com/u-boot/u-boot.git \	
	file://0001-1-6-sunxi-add-V3-S3-support.patch \
	file://0002-v3-sunxi-add-PineCube-board.patch \
"

ATF_DEPENDS ??= ""

EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"

do_compile[depends] += "${ATF_DEPENDS}"
