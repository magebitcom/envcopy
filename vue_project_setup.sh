#!/bin/bash
params=$1
#################################################################################
export ANSIBLE_HOST_KEY_CHECKING=False
if [[ "$params" == "--ignore-media" ]] 
then
  echo -n "Define project name without .stgin.com domain name [example: projectx]: "
  read project
  echo -n "Define mysql version [5.7 or 8.0]: "
  read mysql_version
  ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e media_dump='false' -e vue_project='true' -e mysql_version=$mysql_version
elif [[ "$params" == "--help" ]]
then
  echo 'Options:'
  echo '  --ignore-media: Dump project without media'
  echo '  --vue-project: Clone cue project as well'
else
  echo -n "Define project name without .stgin.com domain name [example: projectx]: "
  read project
  echo -n "Define mysql version [5.7 or 8.0]: "
  read mysql_version
  echo ' '
  echo 'Use "./project_setup.sh --help" for more information about a given command.'
  sleep 2
  ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e media_dump='true' -e vue_project='true' -e mysql_version=$mysql_version
fi
