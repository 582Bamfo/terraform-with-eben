terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "this" {
  ami           = "ami-03446a3af42c5e74e"
  instance_type = "t2.micro"
  tags = {
    Name = "web"
  }
}
