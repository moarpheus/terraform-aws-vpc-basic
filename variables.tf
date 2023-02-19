variable "vpc_name" {
  description = "Name tag for VPC"
  type        = string
  default     = "main"
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
