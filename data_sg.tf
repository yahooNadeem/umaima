data "aws_security_group" "terrasg" {
  filter {
    name   = "tag:Name"
    values = ["TerraSG"]
  }

  vpc_id = data.aws_vpc.practice_vpc.id
}
