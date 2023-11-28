# Basic AWS VPC Terraform module 

Terraform module which creates basic VPC on AWS with optional public and private subnets.

## Usage

```hcl
module "vpc" {
  source  = "moarpheus/vpc-basic/aws"
  vpc_cidr = "10.0.0.0/16"

  enable_dns_hostnames  = true
  enable_dns_support    = true

  availability_zones    = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  private_subnets_cidr  = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
  public_subnets_cidr   = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]

  environment = "dev"
}
```

## Internet and NAT gateways

This module will create Internet Gateway and routing for public subnet. It will create NAT gateway in public subnet and create routing for private subnets to have access outside the VPC.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vpc_cidr | (Optional) The IPv4 CIDR block for the VPC. | `string` | `"10.0.0.0/16"` | no |
| environment | (Optional) Environment for the VPC. | `string` | `"dev"` | no |
| enable_dns_hostnames | (Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults to true. | `bool` | `"true"` | no |
| enable_dns_support | (Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults to true. | `bool` | `"true"` | no |
| public_subnets_cidr | (Optional) The IPv4 CIDR block for the plublic subnets. | `list` | [] | no |
| private_subnets_cidr | (Optional) The IPv4 CIDR block for the private subnets. | `list` | [] | no |
| availability_zones | (Optional) List of availability zones for VPC. | `list` | [] | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azs"></a> vpc_id | ID of created VPC resource |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.55 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.55 |

## Authors

Module is maintained by Juris Gribuska
