rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
yum search mysql-community
yum install mysql-community-server
systemctl start mysqld

mysql_secure_installation