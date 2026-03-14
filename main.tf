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
