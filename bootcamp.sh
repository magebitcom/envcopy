#!/bin/bash

apt-get install -y openssl php8.1-bcmath php8.1-curl php8.1-mbstring php8.1-mysql php8.1-tokenizer php8.1-xml php8.1-zip curl php8.1-mysql php8.1-intl php8.1-fpm

# Setup PC
snap install --classic code

usermoad -a -G www-data:$USER

cp ./bootcamp/nginx/server.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-enabled/server.conf /etc/nginx/sites-available/

mkdir /var/www/web/
cp -r bootcamp/server /var/www/web/
cd /var/www/web/server/ 
composer install --no-interaction

echo "127.0.0.1 web.local" >> /etc/hosts
service nginx restart

chmod -R 775 /var/www/web/
chown -R $USER:www-data /var/www/web/

chmod 400 ~/.bashrc