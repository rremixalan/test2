FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://0001-Use-new-dbus-method-to-send-IPMB-request-with-target.patch \
             file://0002-Use-b-option-in-ipmitool-bridge-command-as-channel-n.patch"


