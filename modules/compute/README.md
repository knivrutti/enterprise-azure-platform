# Compute Module

## Purpose

Deploys an Azure Linux Virtual Machine with:

- Network Interface
- User Assigned Managed Identity
- SSH authentication
- Boot Diagnostics
- Standard SSD OS Disk

## Inputs

- name
- resource_group_name
- location
- subnet_id
- vm_size
- admin_username
- ssh_public_key
- identity_id
- boot_diagnostics_storage_uri

## Outputs

- id
- name
- network_interface_id
- private_ip_address