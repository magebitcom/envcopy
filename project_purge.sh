#!/bin/bash
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project
#################################################################################
./ansible-playbook -K -i localhost, playbooks/purge.yml -e project=$project
