#!/bin/sh

#Latest Packages

sudo apt update -y && sudo apt upgrade -y

# Install AWS CLI

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo rm awscliv2.zip

sudo ./aws/install

# Install Terraform

wget https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip

unzip terraform_0.13.3_linux_amd64.zip

sudo rm terraform_0.13.3_linux_amd64.zip

sudo mv terraform ./bin