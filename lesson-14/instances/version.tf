
terraform {
  backend "s3" {
    # Enter the bucket name you chose previously as well as a bucket key.
    bucket = "tac-testing-s3-bucket-course-909"
    key = "dir1/terraform.tfstate"
    region = "us-east-2"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.01"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  required_version = ">= 1.4.6"
}