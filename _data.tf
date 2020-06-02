data aws_iam_policy_document assume_role_billing {
  statement {
    actions = ["sts:Assume"]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.idp_account_id}:root"]
    }
  }
}