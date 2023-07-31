#!/bin/bash

apt-get install -y php-fpm php-curl php-xml php-json curl

# Setup PC
snap install --classic code

usermoad -a -G www-data:$USER

cp ./bootcamp/nginx/server.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-enabled/server.conf /etc/nginx/sites-available/

mkdir /var/www/web/
cp -r bootcamp/server /var/www/web/
composer install /var/www/web/server/

echo "127.0.0.1 web.local" >> /etc/hosts
service nginx restart

chmod 400 ~/.bashrc