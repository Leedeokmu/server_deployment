#!/usr/bin/env bash

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo yum install -y git

systemctl enable jenkins
systemctl start jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword

#automatic jenkins build system
#1. register github webhook
#require github account, jenkins server ip or dns(global ip)
#2. create jenkins job
#require git/github/github integration plugin(installed git in os), gradle plugin(set global tool setting)
#1) git repo 2) build trigger - gitScm 3) build with gradle or maven(set properties and specify build script)
#4) shell script for auto copy and auto deployment
#to use shell command, edit sudoer file
#sudo visudo
#and add
#jenkins ALL: (ALL) NOPASSWD: ALL