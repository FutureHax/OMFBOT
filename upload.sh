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

ftp -n -v $HOST << EOT
ascii
user $USER $PASSWD
prompt
cd $REMOTEDIR
lcd ~/$ROM/out/target/product/$DEVICE/
put $ZIP
bye
EOT

pushd ~/$ROM
make clobber
popd
