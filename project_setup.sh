#!/bin/bash
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project

echo -n "Define AWS SSH username: "
read aws_username

echo -n "Define AWS SSH private_key[example: /home/username/.ssh/id_rsa]: "
read aws_private_key_path
#################################################################################
./ansible-playbook -K -i localhost --private-key=$aws_private_key_path, playbooks/envcopy.yml -e project=$project -e aws_username=$aws_username -e aws_private_key_path=$aws_private_key_path
