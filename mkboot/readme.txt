Execute gnu_makeboot64.sh to create flashable boot image (flash with fastboot).

Hint: Edit gnu_makeboot64.sh in order to customize wifi MAC address: change bcmdhd.custom_mac=989096fd1234 accordingly (warning: must be a VALID MAC address)

Then flash

Code:

./gnu_makeboot64.sh
fastboot flash boot  bootimage_64.img
