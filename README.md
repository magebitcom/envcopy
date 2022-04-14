Requirements:

	1. Ubuntu18/20 OS
	2. MySQL, nginx, php*, ansible 2.8 should be installed
	3. You should have SSH access to EC2
  	4. Nginx should be installed and running
  	5. MySQL should be installed and running(5.7 on port 3306, 8.0 on port 3307)
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

	sudo apt-get install python3-pip python3-dev git -y
	sudo -H pip3 install ansible==2.8.1.0 pymysql docker-py 
        sudo -H pip3 uninstall Jinja2
        sudo -H pip3 install Jinja2==3.0.3
        pip3 install Jinja2==3.0.3
        
