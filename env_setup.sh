#!/bin/bash
echo -n "Define AWS SSH username: "
read aws_username

echo -n "Define AWS SSH private_key[default: $HOME/.ssh/id_rsa]: "
read aws_private_key_path
[ ! -z "$aws_private_key_path" ] || aws_private_key_path="$HOME/.ssh/id_rsa"
#################################################################################
mkdir -p ./playbooks/group_vars
echo "aws_username: $aws_username" > playbooks/group_vars/all
echo "aws_private_key_path: $aws_private_key_path" >> playbooks/group_vars/all
echo "ansible_ssh_private_key_file: $aws_private_key_path" >> playbooks/group_vars/all
