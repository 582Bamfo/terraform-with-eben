resource "aws_iam_group" "groups" {
  for_each = toset(var.groups)
  name     = "${each.key}-${var.environment}"
}

resource "aws_iam_policy" "policy" {
  name        = var.policy_name
  description = var.policy_description

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket",
          "s3:GetObject"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_group_policy_attachment" "policy" {
  for_each = aws_iam_group.groups

  group      = each.value.name
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_iam_user" "users" {
  for_each = toset(var.users)
  name     = "${each.key}-${var.environment}"

}

resource "aws_iam_user_group_membership" "membership" {
  for_each = aws_iam_user.users

  user   = each.value.name
  groups = var.groups
}





