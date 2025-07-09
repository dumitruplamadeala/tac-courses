terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "splat_lab" {
  ami           = "ami-0c7c4e3c6b4941f0f"
  instance_type = "t2.micro"

  root_block_device {
    volume_size = 16
    volume_type = "gp2"
  }

  ebs_block_device {
    device_name = "/dev/xvdb"
    volume_size = 16
    volume_type = "gp2"
  }

  tags = {
    Name = "Splat-Lab"
  }
}


resource "aws_iam_user" "test_users" {
  count = 3
  name  = "tractor-user.${count.index}"
}