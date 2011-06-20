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

ttytter -status="Nightlies have started, stay tuned."

pushd ~/$ROM
rm -rf *
repo sync -j40
. vendor/omfgb/build/nightly.sh
popd

./BuildBot/inc.sh

./BuildBot/sholes.sh

./BuildBot/heroc.sh

./BuildBot/heroc.sh

