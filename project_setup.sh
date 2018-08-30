#!/bin/bash
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project

echo -n "Define AWS SSH username: "
read aws_username
#################################################################################
./ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e aws_username=$aws_username
