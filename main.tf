module "vpc" {
  source = "./module-vpc"

  environment     = var.environment
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}


module "ec2" {
  source = "./module-ec2"
  environment = var.environment
  subnet_id = module.vpc.public_sub_id
  instance_type = var.instance_type
  ami_id      = var.ami_id

}

module "iam" {
  source = "./module-iam"

  environment = var.environment
  users       = var.iam_users
  groups      = var.groups

}

module "s3" {
  source = "./module-s3"

  bucket_name = "${var.bucket_name}-${var.environment}"
  environment = var.environment
}













