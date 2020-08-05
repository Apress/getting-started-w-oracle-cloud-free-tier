#!/bin/bash

echo "The time is now $(date -R)!" | tee /tmp/cloud-init_start.txt
sudo mkdir /root/wallets
sudo yum -y update
sudo yum -y install sqlcl
sudo yum -y install httpd
sudo su -c "systemctl start httpd"
sudo su -c "systemctl enable httpd.service"
sudo su -c "systemctl stop firewalld"
sudo echo 'My First WebApp using Oracle Cloud Free Tier' > /var/www/html/index.html
echo "The time is now $(date -R)!" | tee /tmp/cloud-init_end.txt
