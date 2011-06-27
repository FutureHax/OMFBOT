#!/bin/bash

#Pull config from file.
./kernell_config

#cd to kernel soure path, assuming your kernel soure dir is named src.
cd ~/src
 
#self explanitory.
make clean

#defconfig for your device.
make device_defconfig

#your exports (this line doesnt change unless you are using a custom toolchain).
export CCOMPILER=${HOME}/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-

#make the build.
make ARCH=arm CROSS_COMPILE=$CCOMPILER -j`grep 'processor' /proc/cpuinfo | wc -l`

#move all the compiled files to the /build dir of your kernel source. NOTE: you must incude the META-INF from an anykernel in the /build dir.
cp ~/src/arch/arm/boot/zImage ~/src/build/zImage
cp ~/src/drivers/net/wireless/bcm4329/bcm4329.ko  ~/src/build/system/lib/modules/bcm4329.ko

#these files are evo-specific
#cp ~/test/drivers/net/wimax/SQN/sequans_sdio.ko ~/test/system/lib/modules/
#cp ~/test/drivers/net/wimax/wimaxdbg/wimaxdbg.ko ~/test/system/lib/modules/
#cp ~/test/drivers/net/wimax/wimaxuart/wimaxuart.ko ~/test/system/lib/modules/

#go back to your build dir
cd build

#zip the kernel up 
zip -r kernel_$DATE.zip system zImage META-INF 

#come back to your OMFBOT scripts
cd ~/OMFBOT

#run the upload script
./device_upload.sh

