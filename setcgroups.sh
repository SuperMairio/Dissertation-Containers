#!/bin/bash
apt-get install libcgroup-dev cgroup-lite cgroup-tools cgroupfs-mount libcgroup1
mkdir /sys/fs/cgroup/memory/dckr
echo 512000000 | tee /sys/fs/cgroup/memory/dckr/memory.limit_in_bytes
