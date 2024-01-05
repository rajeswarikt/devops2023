#!/bin/bash

# https://docs.actian.com/openroad/6.2/index.html#page/ServerRef/Install_Tomcat_for_Linux.htm

sudo yum install java-1.8.0-openjdk -y
sudo yum install tomcat -y
sudo yum install tomcat-webapps tomcat-admin-webapps -y
sudo systemctl start tomcat
sudo systemctl enable tomcat
sudo systemctl status tomcat
sudo chmod 777 /var/lib/tomcat/webapps

#scp -o StrictHostKeyChecking=no -i /tmp/mumbaisep23.pem target/hello-*.war ec2-user@172.31.94.225:/var/lib/tomcat/webapps

