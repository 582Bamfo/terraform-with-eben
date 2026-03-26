terraform {
  backend "s3" {
    bucket  = "my-terraform-state-bucket9876"
    key     = "project-name/terraform.tfstate"
    region  = "eu-west-1"
    encrypt = true
  }
}
