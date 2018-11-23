#!/bin/bash

main() {
    TOP=`pwd`
    echo "Copying kernel file."
    rm bzImage
    cp ../out64/arch/x86/boot/bzImage .
#EP
./mkbootimg --kernel bzImage --ramdisk nullramdisk.cpio.gz --second bootstub_bzip2_lp --cmdline "rootfs=ext4 root=/dev/mmcblk0p20 loglevel=8 intel_scu_watchdog_evo.disable_kernel_watchdog=1 androidboot.selinux=permissive vmalloc=256M androidboot.hardware=mofd_v0 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 allow_factory=1 drm_intel_mid.psb_lowres=0 drm_intel_mid.psb_lowcol=1 bcmdhd.custom_mac=989096fd83ed bcmdhd.custom_ccode=DE quiet splash" --output ep_bootimage_64.img
#./mkbootimg --kernel bzImage --ramdisk nullramdisk.cpio.gz --second bootstub_bzip2_lp --cmdline "rootfs=ext4 root=/dev/mmcblk0p20 loglevel=8 intel_scu_watchdog_evo.disable_kernel_watchdog=1 androidboot.selinux=permissive vmalloc=256M androidboot.hardware=mofd_v0 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 allow_factory=1 tngdisp.psb_lowres=0 tngdisp.psb_lowcol=1 bcmdhd.custom_mac=989096fd83ed bcmdhd.custom_ccode=DE fbcon=map:0" --output ep_bootimage_64.img

#BB
./mkbootimg --kernel bzImage --ramdisk nullramdisk.cpio.gz --second bootstub_bzip2_lp --cmdline "rootfs=ext4 root=/dev/mmcblk1p2 loglevel=8 intel_scu_watchdog_evo.disable_kernel_watchdog=1 androidboot.selinux=permissive vmalloc=256M androidboot.hardware=mofd_v0 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 allow_factory=1 drm_intel_mid.psb_lowres=0 drm_intel_mid.psb_lowcol=1 bcmdhd.custom_mac=989096fd83ee bcmdhd.custom_ccode=DE fbcon=map:0 fbcon=rotate:3" --output bb_bootimage_64.img
#./mkbootimg --kernel bzImage --ramdisk nullramdisk.cpio.gz --second bootstub_bzip2_lp --cmdline "rootfs=ext4 root=/dev/mmcblk1p2 loglevel=8 intel_scu_watchdog_evo.disable_kernel_watchdog=1 androidboot.selinux=permissive vmalloc=256M androidboot.hardware=mofd_v0 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 allow_factory=1 tngdisp.psb_lowres=1 tngdisp.psb_lowcol=1 bcmdhd.custom_mac=989096fd83ee bcmdhd.custom_ccode=DE quiet splash" --output bb_bootimage_64.img
#intel_soc_pmu.enable_s3=0

#XDA EP
./mkbootimg --kernel bzImage --ramdisk nullramdisk.cpio.gz --second bootstub_bzip2_lp --cmdline "rootfs=ext4 root=/dev/mmcblk1p2 loglevel=8 intel_scu_watchdog_evo.disable_kernel_watchdog=1 androidboot.selinux=permissive vmalloc=256M androidboot.hardware=mofd_v0 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 allow_factory=1 tngdisp.psb_lowres=0 tngdisp.psb_lowcol=1 bcmdhd.custom_mac=989096fd1234 bcmdhd.custom_ccode=DE quiet splash" --output xda_ep_bootimage_64.img

#XDA BB
./mkbootimg --kernel bzImage --ramdisk nullramdisk.cpio.gz --second bootstub_bzip2_lp --cmdline "rootfs=ext4 root=/dev/mmcblk1p2 loglevel=8 intel_scu_watchdog_evo.disable_kernel_watchdog=1 androidboot.selinux=permissive vmalloc=256M androidboot.hardware=mofd_v0 androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 allow_factory=1 tngdisp.psb_lowres=1 tngdisp.psb_lowcol=0 bcmdhd.custom_mac=989096fd1234 bcmdhd.custom_ccode=DE" --output xda_bb_bootimage_64.img

#Android nougat stock
echo "Making venue boot image for stock rom"
./mkbootimg --kernel bzImage --ramdisk fugu-n2g48c-boot_with_root.img-ramdisk.gz --second bootstub_bzip2_lp --cmdline "pci=noearly vmalloc=256M ptrace.ptrace_can_access=1 loglevel=8 androidboot.hardware=fugu androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 intel_soc_pmu.enable_s3=0 buildvariant=user fbcon=map:0 androidboot.selinux=permissive androidboot.wakesrc=05 androidboot.mode=main androidboot.bootloader=FUGU-02.13 androidboot.bootreason=reboot bcmdhd.custom_mac=989096fd83ee bcmdhd.custom_ccode=DE" --output android_bootimage_nougat_nohwbinder.img

#Android nougat full
echo "Making venue boot image for video.it rom"
./mkbootimg --kernel bzImage --ramdisk videoit_nougat_boot.img-ramdisk.gz --second bootstub_bzip2_lp --cmdline "pci=noearly vmalloc=256M ptrace.ptrace_can_access=1 loglevel=8 androidboot.hardware=fugu androidboot.serialno=01234567890123456789 snd_pcm.maximum_substreams=8 intel_soc_pmu.enable_s3=0 buildvariant=user fbcon=map:0 androidboot.selinux=permissive androidboot.wakesrc=05 androidboot.mode=main androidboot.bootloader=FUGU-02.13 androidboot.bootreason=reboot bcmdhd.custom_mac=989096fd83ee bcmdhd.custom_ccode=DE console=none" --output android_bootimage_nougat_nohwbinder_video_it.img
    cd $TOP
    echo ""
    echo "============================== INFOS =============================="
    echo "WARNING: custom MAC addr hack is on"
    echo "build finished: with su root"
    echo "==================================================================="
    echo ""
    exit 0
}

main $*

