#!/bin/bash
#Description:How to install and configure SonarQube on CentOS 7      
#Author:CJ
#Date:Feb 24 2022

echo "installing Java11"
sleep 2
sudo yum update -y
sleep 3
 sudo yum install java-11-openjdk-devel -y
sleep 3
 sudo yum install java-11-openjdk-devel -y

echo "navigating to the /opt directory"
cd /opt
sleep 2
sudo yum install wget -y
sleep 2
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 2
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start