module "instance" {
  source        = "./ec2"
  instance_type = "t2.small"
}

module "iam_user" {
  source = "./iam_user"

}

module "s3" {
  source = "./s3"
}

module "iam_group" {
  source     = "./iam_group"
  policy_arn = var.policy_arn

}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway

  tags = var.vpc_tags
}
