#!/bin/bash
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project
echo -n "Define mysql version [5.7 or 8.0]: "
read mysql_version
#################################################################################
ansible-playbook -K -i localhost, playbooks/purge.yml -e project=$project -e mysql_version=$mysql_version
