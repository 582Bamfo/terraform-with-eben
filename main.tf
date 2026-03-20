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

module "aws_vpc" {
  source = "./module-vpc"

}

module "subnet" {
  source = "./module-vpc.public_subnet.id"

}

module "subnet" {
  source = "./module-vpc.private_subnet.id"
}

module "aws_internet_gateway" {
  source = "./module-vpc.internet-gateway.id"
}

module "public-rt" {
  source = "./module-vpc.public-rt.id"
}

module "aws_eip" {
  source = "./module-vpc.eip.id"

}

module "nat-gateway" {
  source = "./module-vpc.nat-gateway.id"

}

module "private-subnet-rt" {
  source = "./module-vpc.private-subnet-rt.id"

}

module "nsubnet-assoc" {
  source = "./module-vpc.subnet-assoc.id"
}

module "public-rt" {
  source = "./module-vpc.public-rt"

}
/*module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway

  tags = var.vpc_tags
}*/














