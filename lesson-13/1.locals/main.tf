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

## Build an IAM user account resource here with a for_each meta-argument referecing a locals block.
resource "aws_iam_user" "tes-users" {
  for_each = local.users_defined_in_locals
  name     = each.key

  #adding tags here
  tags = local.defined_tags
}


## Then build a locals block with a toset function listing 4 users.
locals {
  users_defined_in_locals = toset(["jora", "kolea", "borea"])
}


## Finally, build a locals block with common tags and reference it from the IAM user resource.
locals {
  defined_tags = {
    tagogos      = "this is a developer"
    department   = "DEV"
    time_created = timestamp()
  }
}


## More information on Locals: https://developer.hashicorp.com/terraform/language/values/locals


