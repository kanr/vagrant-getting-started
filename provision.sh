#!/bin/bash

# Provisioning Script

apt-get -y update

apt-get -y install nginx

#Create Symbolic link for the nginx root directory
rm -rf /usr/share/nginx/www/
ln -s /vagrant/www  /usr/share/nginx/www

service nginx start
