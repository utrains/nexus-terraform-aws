#!/bin/bash

#### Made by Utrains on 30-12-2022

sudo yum update -y

## Install Java 8:
sudo yum install java-1.8.0-openjdk -y

# create a folder for nexus
mkdir nexus
cd nexus

# download the latest version of nexus
sudo wget -O nexus.tar.gz http://download.sonatype.com/nexus/3/nexus-3.22.1-02-unix.tar.gz

# Extract the downloaded archive file
tar -xvzf nexus.tar.gz
rm -f nexus.tar.gz

# Start Nexus
cd nexus-3.22.1-02/bin/
./nexus start

# give access to key pair
sudo chmod 400 nexus_key_pair.pem
