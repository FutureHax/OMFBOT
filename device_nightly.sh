#!/bin/bash

#Pull config from file.
./kernel_config

#Announce the beginning of nightlies.
ttytter -status="Nightlies for DEVICE have started, stay tuned"

#run the build script.
./device_build.sh

#obviously
exit

