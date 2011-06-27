#!/bin/bash

#Pull config from file.
./config

#Announce the beginning of nightlies.
ttytter -status="Nightlies for Evo have started, stay tuned"

#run the build script.
./device_build.sh

#obviously
exit

