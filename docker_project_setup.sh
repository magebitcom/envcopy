#!/bin/bash
params=$1
#################################################################################
export ANSIBLE_HOST_KEY_CHECKING=False
if [[ "$params" == "--ignore-media" ]] 
then
  echo -n "Define project name without .stgin.com domain name [example: projectx]: "
  read project
  ansible-playbook -K -i localhost, playbooks/docker_envcopy.yml -e project=$project -e media_dump='false'
elif [[ "$params" == "--help" ]]
then
  echo 'Options:'
  echo '  --ignore-media: Dump project without media'
else
  echo -n "Define project name without .stgin.com domain name [example: projectx]: "
  read project
  echo ' '
  echo 'Use "./project_setup.sh --help" for more information about a given command.'
  sleep 2
  ansible-playbook -K -i localhost, playbooks/docker_envcopy.yml -e project=$project -e media_dump='true' -e docker_project='true'
fi
