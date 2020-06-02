resource aws_iam_role "billing" {
  name               = "${var.org_name}-billing-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_billing.json
}

resource aws_iam_role_policy_attachment "billing" {
  role       = aws_iam_role.billing.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}
