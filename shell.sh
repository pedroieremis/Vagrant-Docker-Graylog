#!/bin/bash

apt update

apt upgrade -y

apt install curl -y

curl -sSLkf https://get.docker.com | bash

usermod -aG docker vagrant

echo "--------------------------------------------------------------------"
echo " | -------------------- VAGRANT PROVISIONADA! -------------------- |"
echo "--------------------------------------------------------------------"