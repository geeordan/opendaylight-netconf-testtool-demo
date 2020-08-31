#!/bin/bash

printf "\e[31mInstalling Essential Tools...\e[0m\n"
sudo apt update -y
sudo apt-get install python3 -y
sudo apt-get install openjdk-11-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/

printf "\e[31mDownloading and Extracting OpenDaylight 0.12.2...\e[0m\n"
wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/opendaylight/0.12.2/opendaylight-0.12.2.tar.gz
tar -xvf opendaylight-0.12.2.tar.gz

printf "\e[31mDownloading Netconf Testtool 1.8.2...\e[0m\n"
wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/netconf/netconf-testtool/1.8.2/netconf-testtool-1.8.2-executable.jar

printf "\e[31mStarting OpenDaylight...\e[0m\n"
cd opendaylight-0.12.2/bin/
./karaf
