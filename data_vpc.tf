data "aws_vpc" "practice_vpc" {
  filter {
    name   = "tag:Name"
    values = ["VPC_Practice"]
  }
}

