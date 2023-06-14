#!/bin/bash

printf "Processing all nodes...\n"
printf "#######################################################\n\n"

#iterate over all nodes listed by kubectl
for ns in $(kubectl get nodes -l '!node-role.kubernetes.io/master' --no-headers | awk '{print $1}'); do
    kubectl label node ${ns} node-role.kubernetes.io/master=false  
done

printf "Done\n"
printf "#######################################################\n\n"
