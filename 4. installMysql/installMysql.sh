#!/bin/bash

rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
yum search mysql-community
yum install mysql-community-server
systemctl start mysqld

# search default password
cat /var/log/mysqld.log | grep pass
# change default password policy
SET GLOBAL validate_password_policy=LOW;
SET GLOBAL validate_password_length=4;

