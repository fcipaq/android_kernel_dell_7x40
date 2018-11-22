# nougat_dell_7x40_kernel

This is an Android Nougat kernel for the Dell Venue 7840 and Dell Venue 7040 derived from the Google Fugu kernel.

Introduction
============

All three devices feature basically the same hardware. They run on an Intel Moorefield platform (CPU: Z3580 SoC) and feature a powerful PowerVR G6430 graphics solution.
Software support has been abandoned by Dell merely one year after release, which is really a pity.


Aim
============

I am aming to implement an Android LXC solution (minimal Android system running inside a LXC container) to support graphics acceleration in Ubuntu.


Status
============

This Kernel can run Android Nougat; it runs the Google Nexus Player 7.1.x stock ROMs with slight modifications (i.e. hwcomposer).
However this project is targeted to support a regular Ubuntu desktop OS on the Dell devices. By now my work on the kernel has enabled a lot of hardware features and the kernel can also run (next to Android) Ubuntu 16.04 and 18.04.

  Working hardware:

    * Graphics (Ubuntu: no acceleration)
    * Sound
    * Bluetooth
    * Wifi
    * Power management (battery charing, attachable keyboard power support)

  Not working:

    * Sleep (device waking up afer 0.00 sec)
    * Cameras (no plans to do anything about it)
    * Sensors & GPS (no plans to do anything about it)
  
As the kernel supports both OS (Android and Ubuntu) work on the LXC-container my begin.

Source
============

Original source code from Google can be downloaded here:

https://android.googlesource.com/kernel/x86_64/+/android-x86_64-fugu-3.10-nougat
