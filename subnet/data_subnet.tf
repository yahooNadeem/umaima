data "aws_subnet" "practice_subnet" {
  filter {
    name   = "tag:Name"
    values = ["My_PracticeSubnet"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.practice_vpc.id]
  }
}
