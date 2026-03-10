module "instance" {
  source        = "./ec2"
  instance_type = "t2.small"
}

resource "aws_iam_user_group_membership" "dev_membership" {
  user   = aws_iam_user.user.name
  groups = [aws_iam_group.dev.name]
}
