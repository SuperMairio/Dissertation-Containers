#!/bin/bash

# Download tool
curl -S "https://github.com/genuinetools/bane/releases/download/v0.4.4/bane-linux-amd64" -o "/usr/local/bin/bane"
chmod a+x "/usr/local/bin/bane"

# Run bane and create nginx container 
bane sample.toml
docker run -d --rm --security-opt="apparmor:docker-nginx-sample" -p 80:80 nginx