#!/bin/bash

# Installing Dependencies
echo "#############################################################################################"
echo "Installing Packages."
echo "#############################################################################################"
sudo yum install wget unzip httpd -y
echo

# Start & Enable Service
echo "#############################################################################################"
echo "Start and Enabling HTTPD Service"
echo "#############################################################################################"

sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Creating Temp Directory
echo "#############################################################################################"
echo "Starting Artifact Deployment"
echo "#############################################################################################"
mkdir -p/tmp/webfiles
cd /tmp/webfiles
echo
 
wget https://www.tooplate.com/zip-templates/2146_nexus_brew.zip
unzip 2146_nexus_brew.zip
cp -r 2146_nexus_brew.zip/* /var/www/html/
echo

# Bounce Service
echo "#############################################################################################"
echo "Restarting Httpd Service"
echo "#############################################################################################"
systemctl restart httpd
echo

#Clean Up
echo "#############################################################################################"
echo "Removing Temporary Files"
echo "#############################################################################################"
rm -rf /tmp/webfiles
echo
