#!/bin/bash
apt-get update -y
apt-get upgrade -y

apt-get install -y docker.io
systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu

apt-get install -y openjdk-11-jdk

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update -y
apt-get install -y jenkins
systemctl start jenkins
systemctl enable jenkins


