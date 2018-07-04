#!/usr/bin/env bash

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins

systemctl enable jenkins
systemctl start jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword