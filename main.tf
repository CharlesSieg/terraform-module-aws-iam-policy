resource "aws_iam_policy" "this" {
  description = var.description
  name        = "${var.name}-policy"
  policy      = templatefile(var.policy_path, var.policy_vars)
  provider    = aws.role

  tags = merge(var.tags, {
    Name = "${var.name}-policy"
  })
}

resource "aws_iam_role_policy_attachment" "this" {
  policy_arn = aws_iam_policy.this.arn
  provider   = aws.role
  role       = var.role_name
}
