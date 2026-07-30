#!/usr/bin/env bash

set -euo pipefail

echo "========================================"
echo " Enterprise Azure Platform Initializer"
echo "========================================"

echo
echo "Checking prerequisites..."

command -v git >/dev/null || { echo "Git not found."; exit 1; }
command -v terraform >/dev/null || { echo "Terraform not found."; exit 1; }
command -v az >/dev/null || { echo "Azure CLI not found."; exit 1; }

echo "✓ Git        : $(git --version)"
echo "✓ Terraform : $(terraform version | head -1)"
echo "✓ Azure CLI : $(az version --output tsv --query '"azure-cli"' 2>/dev/null || az version | head -1)"

echo
echo "Formatting Terraform files..."
terraform fmt -recursive

echo
echo "Initializing Terraform..."
terraform init

echo
echo "Validating Terraform..."
terraform validate

echo
echo "========================================"
echo " Environment is ready."
echo "========================================"
