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

## Repository Layout

```text
modules/
├── compute/
├── network/
├── storage/
├── identity/
├── keyvault/
└── monitoring/

environments/
├── dev/
├── qa/
└── prod/
```

## Getting Started

```bash
terraform init
terraform validate
terraform plan
```
## Requirements

- Terraform >= 1.5
- AzureRM Provider ~> 4.0

## Git Workflow

```bash
git checkout main
git pull
git commit
git push
```
