output "vpc_id" {
  description = "VPC id"
  value = "${aws_vpc.vpc.id}"
}
