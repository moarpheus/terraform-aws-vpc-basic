# Apply run block to create the bucket
run "create_vpc" {
  variables {
    environment = "dev"
  }

  # Check that the bucket name is correct
  assert {
    condition     = aws_security_group.default.name == "dev-default-sg"
    error_message = "Invalid SG group name"
  }
}
