variable "region" {
  description = "AWS region to host your infrastructure"
  default     = "us-west-2"
}

variable "key_name" {
  description = "Private key name to use with instance"
  default     = "qlik"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t3.small"
}

variable "ami" {
  description = "AWS Centos7 marketpalce"

  # Centos 7 
  default = "ami-0bc06212a56393ee1"
}

