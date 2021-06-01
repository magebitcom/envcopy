#!/bin/bash
#################################################################################
INTERPRETER_PYTHON=/usr/bin/python3 ansible-playbook -K -i localhost, playbooks/pcsetup.yml
