#!/bin/bash/
#
echo "Hello world"

#Execute whoami 
user=$(whoami)

hostname=$(hostname)

directory=$(pwd)

echo "User=[$user] Host=[$hostname] Dir=[$directory]"
