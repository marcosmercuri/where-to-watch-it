#!/usr/bin/env bash

# This script creates the infrastructure needed for the remote storage of the terraform state file.
# After creating the infrastructure, it configures terraform to use them.

cd setup
terraform init
terraform apply -var-file=../terraform.tfvars
cd ..
terraform init -backend-config=terraform.tfvars