# Enterprise Azure Platform

This repository contains a production-style Azure Infrastructure as Code project built using Terraform.

## Modules

- Storage
- Network
- Compute

Additional modules will be added as the project evolves.

## Learning Goals

- Terraform fundamentals
- Azure Infrastructure
- Modular design
- Production best practices
- Git-based workflow

Repository Layout

modules/
    compute/
    identity/
    keyvault/
    monitoring/
    network/
    storage/

environments/
    dev/
    qa/
    prod/

Getting Started

terraform init
terraform validate
terraform plan

Requirements

Terraform >=1.5
AzureRM Provider ~>4.0

Git Workflow

git checkout main
git pull
git commit
git push
