FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

# tag: qcom-next-7.0-rc2-20260306
LINUX_VERSION:uno-q = "6.19+7.0-rc2"
SRCREV:uno-q = "a656209cfb5a49f301c377aa8455a10f83a4a719"

FILESEXTRAPATHS:prepend:radxa-dragon-q6a := "${THISDIR}/radxa-dragon-q6a:"

SRC_URI:append:radxa-dragon-q6a = " \
			file://realtek-eth-8169.cfg \
"

LINUX_VERSION:ventuno-q = "7.1-rc4"
SRCREV:ventuno-q = "107224669d45301485ecd75975f78de5861afde7"
KBUILD_CONFIG_EXTRA:remove:ventuno-q = "${S}/arch/arm64/configs/prune.config ${S}/arch/arm64/configs/qcom.config"
SRCBRANCH:ventuno-q = "nobranch=1"
SRCBRANCH:class-devupstream:ventuno-q = "branch=early/hwe/monza"
SRC_URI:remove:ventuno-q = "git://github.com/qualcomm-linux/kernel.git;${SRCBRANCH};protocol=https"
SRC_URI:append:ventuno-q = " git://github.com/qualcomm-linux/kernel-topics.git;${SRCBRANCH};protocol=https file://configs/monza.cfg"
