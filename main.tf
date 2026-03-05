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

  metadata_options {
       http_endpoint          = "enabled"
       http_token             = "required"
       instance_metadata_tags = "enabled"
  }
  tags = {
     Name = "web"
  }
}

resource "aws_iam_user" {
  name = "vcristian"
  force_destroy = false
  tags = {
    Environment = "dev"
  }
}

resource "aws_s3_bucket" "dev" {
  bucket = "s3-bucket-eben2026-ter-lesson"

  tags = {
    Environment = "dev"
    managed_by = "terraform"
  }
}
