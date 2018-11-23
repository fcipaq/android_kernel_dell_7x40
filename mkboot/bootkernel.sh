#!/bin/bash

echo "Copying kernel file."
rm bzImage
cp ../out64/arch/x86/boot/bzImage .
echo Executing bzImage...
sudo kexec bzImage --command-line="rootfs=ext4 root=/dev/mmcblk0p20 rootwait ignore_loglevel loglevel=8 pci=noearly console=logk0 fbcon=map:0 earlyprintk=pti,keep intel_scu_watchdog_evo.disable_kernel_watchdog=1 androidboot.selinux=permissive vmalloc=256M androidboot.hardware=mofd_v0 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 allow_factory=1 tngdisp.psb_lowres=0 tngdisp.psb_lowcol=1 bcmdhd.custom_mac=989096fd83ed bcmdhd.custom_ccode=DE quiet splash"

