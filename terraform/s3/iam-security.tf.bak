# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document
data "aws_iam_policy_document" "deny_insecure" {
  statement {
    sid    = "DenyUnEncryptedObjectUploads"
    effect = "Deny"

    actions = [
      "s3:PutObject",
    ]

    resources = [
      local.bucket_arn,
      "${local.bucket_arn}/*",
    ]

    principals {
      identifiers = ["*"]
      type        = "*"
    }

    condition {
      test     = "Null"
      values   = ["true"]
      variable = "s3:x-amz-server-side-encryption"
    }
  }

  statement {
    sid    = "DenyIncorrectEncryptionHeader"
    effect = "Deny"

    actions = [
      "s3:PutObject",
    ]

    resources = [
      local.bucket_arn,
      "${local.bucket_arn}/*",
    ]

    principals {
      identifiers = ["*"]
      type        = "*"
    }

    condition {
      test     = "StringNotEquals"
      values   = ["aws:kms"]
      variable = "s3:x-amz-server-side-encryption"
    }
  }
}
