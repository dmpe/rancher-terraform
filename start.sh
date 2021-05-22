#!/bin/bash

terraform init

terraform validate

terraform plan -var-file="rancher.tfvars"

terraform graph -draw-cycles

terraform apply -var-file="testing.tfvars" -auto-approve