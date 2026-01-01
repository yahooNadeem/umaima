provider "aws" {
  region = "eu-west-1"
}


# Get latest Windows Server AMI
data "aws_ami" "windows" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Launch EC2 instance
resource "aws_instance" "windows_server1" {
  ami           = data.aws_ami.windows.id
  instance_type = "t3.medium"
  key_name      = "Terrakey"
  subnet_id     = data.aws_subnet.practice_subnet.id
  vpc_security_group_ids = [data.aws_security_group.terrasg.id]

  
tags = {
    Name        = "Terraform-EC2"
    Environment = "Development"
    Owner       = "Nadeem Ahmed Kafil Siddiqui"
    Project     = "Infra Automation"
    Source      = "Terraform Files"
    Department  = "ITOps"
  }

  
}
