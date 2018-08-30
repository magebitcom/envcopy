#!/bin/bash
echo -n "Define project name without .stgin.com domain name [example: projectx]: "
read project

echo -n "Define DB name [example: staging]: "
read mysql_db

echo -n "Define table prefix if exist(OPTIONAL) [example: mage_]: "
read table_prefix

echo -n "Define AWS SSH username: "
read aws_username
#################################################################################
./ansible-playbook -K -i localhost, playbooks/envcopy.yml -e project=$project -e project_type=$project_type -e aws_username=$aws_username -e mysql_db=$mysql_db -e table_prefix=$table_prefix
