# VPC

resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags = {
    Name        = "${var.vpc_name}"
  }
}

# VPC Default Security Group
resource "aws_security_group" "default" {
  name        = "default-sg"
  description = "Default security group to allow inbound/outbound trafic to/from VPC"
  vpc_id      = "${aws_vpc.this.id}"
  depends_on  = [aws_vpc.this]
  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = true
  }
  
  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = "true"
  }
}

# Availability zones

data "aws_availability_zones" "available" {
  state = "available"
}
