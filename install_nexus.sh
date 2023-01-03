#!/bin/bash

#### Made by Utrains on 30-12-2022

sudo yum update -y

## Install Java 8:
sudo yum install java-1.8.0-openjdk -y

# download the latest version of nexus
sudo wget -O nexus.tar.gz https://download.sonatype.com/nexus/3/nexus-3.45.0-01-unix.tar.gz

# Extract the downloaded archive file
tar -xvzf nexus.tar.gz
rm -f nexus.tar.gz
sudo mv nexus-3.45.0-01 nexus

# Start Nexus and check status
sh /home/ec2-user/nexus/bin/nexus start
sh /home/ec2-user/nexus/bin/nexus status
