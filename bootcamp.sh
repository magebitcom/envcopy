#!/bin/bash
USER_NEW=magebit_admin
PASS=1GM1v7wK

snap install --classic code

cp ./bootcamp/nginx/server.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-enabled/server.conf /etc/nginx/sites-available/

mkdir /var/www/web/
cp bootcamp/server/index.php /var/www/web/

echo "127.0.0.1 web.local" >> /etc/hosts
service nginx restart

useradd -p $(openssl passwd -crypt $PASS) $USER_NEW
usermod -aG sudo $USER_NEW

USER=1
PASS=1

echo "alias sudo='echo "!!!! not allowed !!!!" '" >> ~/.bashrc
chmod 400 ~/.bashrc

rm -rf .git/
echo '' > ./bootcamp.sh
