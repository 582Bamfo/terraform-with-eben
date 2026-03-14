module "instance" {
  source        = "./ec2"
  instance_type = "t2.small"
}

module "iam_user" {
  source = "./iam_user"
  iam_user_name = var.iam_user_name
}

module "s3" {
  source = "./s3"
}

module "iam_group" {
  source     = "./iam_group"
  policy_arn = var.policy_arn

}
