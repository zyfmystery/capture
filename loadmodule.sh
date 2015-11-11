#!/bin/sh

# TONGYE Tech. Memory Map for DM3730 EVM without Android

# Start Addr    Size    Description

# -------------------------------------------

# 0x80000000     120 MB  Linux

# 0x87800000     32 MB  CMEM for ARM and DSP

# 0x89800000     104 MB  CODEC SERVER for DSP (20M for DDR2)

insmod /opt/dvsdk/works/code/cmemk.ko phys_start=0x85000000 phys_end=0x86000000 pools=1x5250000,1x1429440,5x1048576,1x256000,4x829440,8x131072,20x4096 allowOverlap=1 

insmod /opt/dvsdk/works/code/dsplinkk.ko

insmod /opt/dvsdk/works/code/lpm_omap3530.ko

insmod /opt/dvsdk/works/code/sdmak.ko