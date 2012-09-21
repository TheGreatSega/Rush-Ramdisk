#!/sbin/sh

# check model number of device
CHECK=`cat /system/build.prop | grep ro.product.model`

case $CHECK in
	ro.product.model=LT15*)
		FIXUP_FREQ=1017600
		;;
	ro.product.model=LT18*)
		FIXUP_FREQ=1401600
		;;
esac

echo $FIXUP_FREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

