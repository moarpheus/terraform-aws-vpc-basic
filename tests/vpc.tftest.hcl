# Apply run block to create the bucket
run "create_vpc" {
  variables {
    environment = "dev"
  }

  # Check that the bucket name is correct
  assert {
    condition     = aws_vpc.this.id == "dev-vpc"
    error_message = "Invalid vpc name"
  }
}
