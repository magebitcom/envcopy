#!/bin/bash
params=$1
#################################################################################
export ANSIBLE_HOST_KEY_CHECKING=False
if [[ "$params" == "--ignore-media" ]] 
then
  echo -n "Define project name without .stgin.com domain name [example: projectx]: "
  read project
  ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e media_dump='false' -e vue_project='true'
elif [[ "$params" == "--help" ]]
then
  echo 'Options:'
  echo '  --ignore-media: Dump project without media'
  echo '  --vue-project: Clone vue project as well'
else
  echo -n "Define project name without .stgin.com domain name [example: projectx]: "
  read project
  echo ' '
  echo 'Use "./project_setup.sh --help" for more information about a given command.'
  sleep 2
  ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e media_dump='true' -e vue_project='true'
fi
