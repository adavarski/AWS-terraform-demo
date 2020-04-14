# Use AWS Terraform provider
provider "aws" {
  region = "us-west-2"
}

data "aws_availability_zones" "all" {
}

# Create EC2 instance
resource "aws_instance" "demo-tf" {
  ami                    = var.ami
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.demo-tf.id]
  source_dest_check      = false
  instance_type          = var.instance_type

}

# Create Security Group for EC2
resource "aws_security_group" "demo-tf" {
  name = "terraform-demo-sg"

  ingress {
    from_port   = 10500
    to_port     = 10500
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 10502
    to_port     = 10502
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


