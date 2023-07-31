#!/bin/bash

# Setup PC
snap install --classic code

cp ./bootcamp/nginx/server.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-enabled/server.conf /etc/nginx/sites-available/

mkdir /var/www/web/
cp -r bootcamp/server /var/www/web/

echo "127.0.0.1 web.local" >> /etc/hosts
service nginx restart

chmod 400 ~/.bashrc