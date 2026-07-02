FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://0001-Add-new-send-method-to-support-addressed-IPMB-reques.patch \
             file://0002-Re-design-ipmb-channel-indexing-to-provide-multi-typ.patch \
             file://0003-Backward-compatibility-for-libmci-using-b-6-and-t-0x.patch \
             file://ipmb-channels.json \
           "

do_install:append() {
    install -d ${D}${datadir}/ipmbbridge
    install -m 0644 ${WORKDIR}/ipmb-channels.json ${D}${datadir}/ipmbbridge/ipmb-channels.json
}

