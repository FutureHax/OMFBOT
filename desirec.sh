#!/bin/bash
cfg.parser ()
{
    IFS=$'\n' && ini=( $(<$1) )
    ini=( ${ini[*]//;*/} )
    ini=( ${ini[*]/#[/\}$'\n'cfg.section.} )
    ini=( ${ini[*]/%]/ \(} )
    ini=( ${ini[*]/=/=\( } )
    ini=( ${ini[*]/%/ \)} )
    ini=( ${ini[*]/%\( \)/\(\) \{} )
    ini=( ${ini[*]/%\} \)/\}} )
    ini[0]=''
    ini[${#ini[*]} + 1]='}'
    eval "$(echo "${ini[*]}")"
}
cfg.parser '~/.OMFBOT_config'

pushd ~/$ROM
. build/envsetup.sh
lunch 3
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. BuildBot/upload.sh

