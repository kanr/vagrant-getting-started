#!/bin/bash

# Provisioning Script

apt-get -y update

apt-get -y install nginx

service nginx start
