#!/bin/bash

# Installing the required packages
apt install apparmor-easyprof apparmor-notify apparmor-utils golang-go

mv usr.bin.docker /etc/apparmor/

# Loading profile into kernel
apparmor_parser -r /etc/apparmor.d/usr.bin.docker

# Running container with new profile
docker run --security-opt apparmor=dckr --rm ubuntu