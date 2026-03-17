resource "aws_iam_group_policy_attachment" "policy" {
  group      = aws_iam_group.this.name
  policy_arn = var.policy_name
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
