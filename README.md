# Dissertation-Containers
Scripts for my Docker dissertation

**These scripts must be ran as sudo or by root**

## CGroups:
- These scripts create and assign docker/a container to memory cgroups
- runconfig.sh must be ran with a docker-compose file in the same folder
- setcgroups.sh can be ran on it's own

## AppArmor:
- These scripts generate apparmor profiles
- apparmor.sh loads usr.bin.docker into the kernel 
- usr.bin.docker is my handmade apparmor profile
- runbane.sh installs and runs  <a href="https://github.com/genuinetools/bane"> bane </a> 
