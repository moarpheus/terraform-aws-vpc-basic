variable "environment" {
  description = "Environment name"
  type = string
  default = "dev"
}

variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  description = "Enables DNS hosntnames for the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enables DNS support for the VPC"
  type        = bool
  default     = true
}

variable "public_subnets_cidr" {
  description = "Public Subnets CIDR"
  type = list
  default = ["10.0.0.0/24"]
}

variable "availability_zones" {
  description = "Availability zones"
  type = list
  default = ["eu-west-2a", "us-west-2b"]
}

variable "private_subnets_cidr" {
  description = "Private subnets CIDR"
  type = list
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
