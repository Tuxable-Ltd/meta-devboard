FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	file://brcmfmac4339-sdio.txt \
	file://brcmfmac4356-sdio.txt \
	file://brcmfmac4354-sdio.txt \
	file://brcmfmac43430a0-sdio.txt \
	file://brcmfmac43455-sdio.txt \
	file://BCM4343A0_001.001.034.0055.0213.hcd \
	file://BCM4356A2.hcd \
"

do_install_append() {

	# Wifi
        install -m 0644 ${WORKDIR}/brcmfmac4339-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm
        install -m 0644 ${WORKDIR}/brcmfmac4356-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm
        install -m 0644 ${WORKDIR}/brcmfmac4354-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm
        install -m 0644 ${WORKDIR}/brcmfmac43430a0-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm
        install -m 0644 ${WORKDIR}/brcmfmac43455-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm
        install -m 0644 ${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.AP6212.txt \
		${D}${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.txt

	# Bluetooth
	install -m 0664 ${WORKDIR}/BCM4343A0_001.001.034.0055.0213.hcd \
		${D}${nonarch_base_libdir}/firmware/brcm/BCM4343A0.hcd

        install -m 0644 ${WORKDIR}/BCM4356A2.hcd ${D}${nonarch_base_libdir}/firmware/brcm
}

FILES_${PN}-bcm4339 += " ${nonarch_base_libdir}/firmware/brcm/brcmfmac4339-sdio.txt"

FILES_${PN}-bcm4356 += " ${nonarch_base_libdir}/firmware/brcm/brcmfmac4356-sdio.txt"
FILES_${PN}-bcm4356 += " ${nonarch_base_libdir}/firmware/brcm/BCM4356A2.hcd"

FILES_${PN}-bcm4354 += " ${nonarch_base_libdir}/firmware/brcm/brcmfmac4354-sdio.txt"

FILES_${PN}-bcm43430 += " ${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.txt"

FILES_${PN}-bcm43455 += " ${nonarch_base_libdir}/firmware/brcm/brcmfmac43455-sdio.txt"

FILES_${PN}-bcm43430a0 += " ${nonarch_base_libdir}/firmware/brcm/brcmfmac43430a0-sdio.txt"
FILES_${PN}-bcm43430a0 += " ${nonarch_base_libdir}/firmware/brcm/BCM4343A0.hcd"
