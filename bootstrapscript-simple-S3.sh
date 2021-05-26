#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><h1>Hello Ghazela Technology Academy Welcome To My Webpage</h1></html>" > index.html
aws s3 mb s3://ghazelatechnologyacademy-awscsa-testbucketbootstrap-080920200955-liajfipuzefae
aws s3 cp index.html s3://ghazelatechnologyacademy-awscsa-testbucketbootstrap-080920200955-liajfipuzefae