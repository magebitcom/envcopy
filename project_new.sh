#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project
<<<<<<< HEAD
echo -n "Define project type ['m1','m2','blank']: "
=======
echo -n "Define project type [m1 or m2 or blank]: "
>>>>>>> 3045ce94943985c0ff97b979e344043748978f72
read project_type
echo -n "Define project type [5.6 or 7.0 or 7.1]: "
read php_version
./ansible-playbook -K -i localhost, playbooks/project_new.yml -e project=$project -e project_type=$project_type -e php_version=php$php_version-fpm