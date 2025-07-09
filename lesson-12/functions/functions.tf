terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = "us-east-2"
}

# Add IAM user resource here and use functions!
resource "aws_iam_user" "TEST_USER" {
  name  = "user-${count.index}"
  count = 3
  tags = {
    time_Created = timestamp()
    department   = "OPERATIONS"
  }
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "aws_iam_user" "example" {
  name = "user-${random_string.suffix.result}"
}