module "instance" {
  source = "./ec2"
  instance_type = "t2.small"
}


resource "aws_iam_user" "user" {
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

resource "aws_iam_group" "dev" {
  name = "dev"
}

resource "aws_iam_group_policy_attachment" "dev_policy" {
  group = aws_iam_group.dev.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_user_group_membership" "dev_membership" {
  user = aws_iam_user.user.name
  groups = [aws_iam_group.dev.name]
}