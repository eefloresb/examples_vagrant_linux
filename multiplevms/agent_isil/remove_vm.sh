#!/bin/bash
variable=(`cat Vagrantfile | grep vm.hostname | cut -d "." -f 1 | tr -d " "`)
for (( i=0; i < ${#variable[@]}; i++ )) 
do
	vagrant destroy -f  ${variable[$i]}
done

