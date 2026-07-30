#!/usr/bin/env bash

set -euo pipefail

echo "Cleaning Terraform artifacts..."

rm -rf .terraform
rm -f *.tfplan

echo "Done."