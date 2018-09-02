Requirements:

	1. Ubuntu16 OS
	2. MySQL, nginx, php*, ansible 2.4 should be installed
	3. You should have SSH access to EC2
  	4. Nginx should be installed and running
  	5. MySQL should be installed and running
  	6. MySQL root password should be option123

Setup environment:

	Execute ./env_setup.sh in root dir and follow instructions

Project copy:

	Execute ./project_setup.sh in root dir and follow instructions. As result:
        1. Nginx vhost will be created
        2. MySQL database will be cloned
        3. Config files will be cloned and modified 
        4. Media directory will be cloned

Local project purge:

	Execute ./project_purge.sh in root dir and follow instructions


Installation:
	1. ansible
		sudo apt-get install python-pip python-dev -y
		sudo -H pip install ansible==2.4.1.0
	2. nginx
		sudo apt-get install nginx -y
	3. MySQL
		sudo apt-get install percona-server-server-5.6 -y
