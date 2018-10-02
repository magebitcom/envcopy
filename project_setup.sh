#!/bin/bash
project_dump=$1
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project

#################################################################################
if [[ "$project_dump" == "--ignore-media" ]] 
then
  ./ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e project_dump='false'
else
  ./ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e project_dump='true'
fi
