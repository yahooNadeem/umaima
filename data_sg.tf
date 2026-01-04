data "aws_security_group" "terrasg" {
  filter {
    name   = "tag:Name"
    values = ["TerraSG"]
  }
filter {
    name   = "vpc-id"
    values = [data.aws_vpc.practice_vpc.id]
  }
}
