#!/bin/bash

# Installing the required packages
apt-get install libcgroup-dev cgroup-lite cgroup-tools cgroupfs-mount libcgroup1

# Creating required folder and setting the memory limits
mkdir /sys/fs/cgroup/memory/dckr
echo 512000000 | tee /sys/fs/cgroup/memory/dckr/memory.limit_in_bytes
echo 512000000 | tee /sys/fs/cgroup/memory/dckr/memory.memsw.limit_in_bytes

# Assigning Docker to the new cgroups
docker run -d --rm ubuntu
DOCKERPID="$(pgrep docker)"
echo $DOCKERPID | tee /sys/fs/cgroup/memory/dckr/cgroup.procs 

# Listing the new cgroups for Docker
echo "Done! Docker cgroups:" 
ps -o cgroup $DOCKERPID