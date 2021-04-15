# Dissertation-Containers
Scripts for my Docker dissertation

- CGroups
    - Scripts must be ran as sudo or by root
    - These scripts create and assign docker/a container to memory cgroups
    - runconfig.sh must be ran with a docker-compose file in the same folder
    - setcgroups.sh can be ran on it's own

TODO: 
- Get runconfig working
- Make setcgroups.sh check for pre-existing files