#!/bin/bash

#Pull in info from config file.
./config

#Upload file to FTP
ftp -n -v yourftpsite.com << EOT
ascii
user yourusername yourpassword
prompt
cd remote/dir/you/wnt/to upload/your/kernel/to
lcd ~/local/dir/your/kernel/zip/is 
put kernel_$DATE.zip
EOT

#Announce new Nightly build.
ttytter -status="New Device nightly available (insert link here)!"


