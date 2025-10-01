data "aws_security_group" "practice_sg" {
  filter {
    name   = "tag:Name"
    values = ["Practice_SG"]
  }

  vpc_id = data.aws_vpc.practice_vpc.id
}
