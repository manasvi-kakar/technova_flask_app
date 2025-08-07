terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AWS_ACCESS_KEY_ID"
  secret_key = "AWS_SECRET_ACCESS_KEY"
}

variable "key_name" {
  default = "mywebserver-01.pem"
}

resource "tls_private_key" "rsa_4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = "mywebserver-01.pem"
    public_key = tls_private_key.rsa_4096.public_key_openssh
}

resource "local_file" "private_key" {
  content         = tls_private_key.rsa_4096.private_key_pem
  filename        = var.key_name
  file_permission = "0400"
}

resource "aws_security_group" "sg_ec2" {
  name        = "sg_ec2"
  description = "Security group for EC2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
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

resource "aws_instance" "public_instance" {
  ami                    = "ami-0d54604676873b4ec"
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.key_pair.key_name
  vpc_security_group_ids = [aws_security_group.sg_ec2.id]
  user_data              = file("user_data.sh")

  tags = {
    Name = "TechNova"
  }
}

#  Output public IP of the instance
output "ec2_public_ip" {
  value = aws_instance.public_instance.public_ip
}
