variable "vpc_id" {
  type        = string
  description = "VPC_ID"
}

variable "cidr_block" {
  type        = string
  description = "CIDR_BLOCK"
}

variable "ami" {
  type        = string
  description = "AMI_ID"
}

variable "instance_type" {
  type        = string
  description = "INSTANCE_TYPE"
}

variable "webserver_name" {
  type        = string
  description = "WEBSERVER NAME"
}