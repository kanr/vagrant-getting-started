#!/bin/bash
#Author Connor Aitken
#Provisioning Script

apt-get -y update

#install nginx
apt-get -y install nginx

#remove sites enabled folder and copy in configuration
rm -rf /etc/nginx/sites-enabled
cp -r /vagrant/sites-enabled /etc/nginx

#Create Symbolic link for the nginx root directory to working files
#rm -rf /usr/share/nginx/www/
#ln -s /vagrant/www  /usr/share/nginx/www

service nginx start
