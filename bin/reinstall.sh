#!/bin/bash

printf "Reinstalling k3s...\n"
printf "#######################################################\n\n"
cd ../k3s-ansible
./reinstall.sh
cd -

printf "Installing flux env into k3s cluster...\n"
printf "#######################################################\n\n"
./bin/install.sh