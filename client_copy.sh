#!/bin/bash
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project

echo -n "Define project_root [example: /var/www/projectx]: "
read project_root

#################################################################################
./ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e project_root=$project_root
