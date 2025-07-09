provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

module "webserver_user2" {
  source         = "../modules/webserver"
  vpc_id         = aws_vpc.main.id
  cidr_block     = "10.0.0.0/16"
  ami            = "ami-0d593311db5abb72b"
  instance_type  = "t2.micro"
  webserver_name = "user_2's server"
}
