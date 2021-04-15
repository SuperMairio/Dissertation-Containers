#!/bin/bash
apt-get install libcgroup-dev cgroup-lite cgroup-tools cgroupfs-mount libcgroup1
mv  cgconfig.config /etc/ && cd /etc
systemctl enable cgconfig
systemctl start cgconfig
docker-compose up --rm exampleContainer
cgexec -g memory,cpuset:dckr docker exec -it exampleContainer /bin/bash