#!/bin/bash

sudo yum install wget unzip httpd -y

wget https://www.tooplate.com/zip-templates/2146_nexus_brew.zip
unzip 2146_nexus_brew.zip
cp -r 2146_nexus_brew.zip/* /var/www/html/

systemctl restart httpd
