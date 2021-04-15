#!/bin/bash
apt-get install libcgroup-dev cgroup-lite cgroup-tools cgroupfs-mount libcgroup1
mkdir /sys/fs/cgroup/memory/dckr && mkdir /sys/fs/cgroup/cpuset/dckr
echo 512000000 | tee /sys/fs/cgroup/memory/dckr/memory.limit_in_bytes
echo 512000000 | tee /sys/fs/cgroup/memory/dckr/memory.memsw.limit_in_bytes
docker run -d --rm ubuntu
DOCKERPID="$(pgrep docker)"
echo $DOCKERPID | tee /sys/fs/cgroup/memory/dckr/cgroup.procs 
echo "Done! Docker cgroups:" 
ps -o cgroup $DOCKERPID