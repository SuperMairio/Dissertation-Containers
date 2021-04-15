#!/bin/bash

# Installing the required packages
apt-get install libcgroup-dev cgroup-lite cgroup-tools cgroupfs-mount libcgroup1

# Moving the config file to the correct folder
mv  cgconf.config /etc/ && cd /etc

# Enabling and starting the service
systemctl enable cgconfig
systemctl start cgconfig

# Create and run container with cgroups
docker-compose up --rm exampleContainer
cgexec -g memory,cpuset:dckr docker exec -it exampleContainer /bin/bash