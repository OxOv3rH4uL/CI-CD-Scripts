#!/bin/bash
echo "##Nexus Installation###"
sudo -s
yum install wget -y
yum install java-1.8.0-openjdk.x86_64 -y
cd /opt
wget -O latest-unix.tar.gz https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -xvzf latest-unix.tar.gz
sudo mv nexus-3* nexus
mv sonatype-work nexusdata
useradd --system nexus
chown -R nexus:nexus /opt/nexus
chown -R nexus:nexus /opt/nexusdata