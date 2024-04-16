# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document
data "aws_iam_policy_document" "public_read" {
  statement {
    sid    = "PublicReadGetObject"
    effect = "Allow"

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "${local.bucket_arn}/*",
    ]

    principals {
      identifiers = ["*"]
      type        = "*"
    }
  }
}
