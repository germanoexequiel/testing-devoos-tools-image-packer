#!/bin/bash -eux


# Install Ansible repository.
apt-get update
apt install curl -y
apt install apt-utils -y
apt-get upgrade -y
apt install software-properties-common -y
apt-add-repository --yes --update ppa:ansible/ansible

# Install Ansible.
apt-get update
apt install ansible -y

#install packer
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update && apt-get install packer


# Install nodejs.
apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_15.x | bash
apt-get install nodejs -y

