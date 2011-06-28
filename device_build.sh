#!/bin/bash

#Pull config from file.
./kernel_config

#cd to kernel soure path, assuming your kernel soure dir is named src.
cd ~/src

#get anykernel files
cd build
git clone https://github.com/koush/AnyKernel.git

#if you are devving for the thunderbolt, use this anykernel instead of the preceding version....NOTE: you need to comment out lines 10 and 11 and uncomment lines 15 and 16 for this next command to work.
 
#cd build
#git cone https://github.com/jdkoreclipse/AnyKernel.git
 
#self explanitory....this does not chnge.
make clean

#defconfig for your device.
make device_defconfig

#your exports (this line doesnt change unless you are using a custom toolchain).
export CCOMPILER=${HOME}/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-

#delete any files left in /build dir of kernel src
rm ~/src/AnyKernel/zImage
rm  ~/src/AnyKernel/system/lib/modules/bcm4329.ko

#evo specific files
#rm ~/src/AnyKernel/system/lib/modules/sequans_sdio.ko
#rm ~/src/AnyKernel/system/lib/modules/wimaxdbg.ko
#rm ~/src/AnyKernel/system/lib/modules/wimaxuart.ko

#make the build.
make ARCH=arm CROSS_COMPILE=$CCOMPILER -j`grep 'processor' /proc/cpuinfo | wc -l`

#move all the compiled files to the /build dir of your kernel source. NOTE: you must incude the META-INF from an anykernel in the /build dir.
cp ~/src/arch/arm/boot/zImage ~/src/AnyKernel/zImage
cp ~/src/drivers/net/wireless/bcm4329/bcm4329.ko  ~/src/AnyKernel/system/lib/modules/bcm4329.ko

#these files are evo-specific
#cp ~/src/drivers/net/wimax/SQN/sequans_sdio.ko ~/src/AnyKernel/system/lib/modules/sequans_sdio.ko
#cp ~/src/drivers/net/wimax/wimaxdbg/wimaxdbg.ko ~/src/AnyKernel/system/lib/modules/wimaxdbg.ko
#cp ~/src/drivers/net/wimax/wimaxuart/wimaxuart.ko ~/src/AnyKernel/system/lib/modules/wimaxuart.ko

#go to your AnyKernel dir
cd AnyKernel

#zip the kernel up 
zip -r kernel_$DATE.zip system zImage META-INF 

#come back to your OMFBOT scripts
cd ~/OMFBOT

#run the upload script
./device_upload.sh

