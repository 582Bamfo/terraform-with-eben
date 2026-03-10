module "instance" {
  source        = "./ec2"
  instance_type = "t2.small"
}

resource "aws_iam_group" "dev" {
  name = "dev"
}

resource "aws_iam_group_policy_attachment" "dev_policy" {
  group      = aws_iam_group.dev.name
  policy_arn = var.policy_arn
}

resource "aws_iam_user_group_membership" "dev_membership" {
  user   = aws_iam_user.user.name
  groups = [aws_iam_group.dev.name]
}
