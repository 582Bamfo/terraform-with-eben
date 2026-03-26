resource "aws_iam_user" "user" {
  name = var.iam_user

  tags = var.tags_iam
}
