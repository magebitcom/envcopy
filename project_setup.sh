#!/bin/bash
media_dump=$1
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project

#################################################################################
export ANSIBLE_HOST_KEY_CHECKING=False
if [[ "$media_dump" == "--ignore-media" ]] 
then
  ./ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e media_dump='false'
else
  ./ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e media_dump='true'
fi
