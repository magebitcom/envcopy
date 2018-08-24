Requirements:

	1. Ubuntu16 OS
	2. MySQL, nginx, php*, ansible 2.4 should be installed
	3. You should have SSH access to EC2
	4. SSH private key should be located in ~/.ssh/ directory
  	5. Nginx should be installed and running
  	6. MySQL should be installed and running
  	7. MySQL root password should be option123

HOWTO:

	Execute ./project_setup.sh in root dir and follow instructions


Results:

	1. Nginx vhost will be created
	2. MySQL database will be cloned
	3. Config files will be cloned and modified 
	4. Media directory will be cloned
