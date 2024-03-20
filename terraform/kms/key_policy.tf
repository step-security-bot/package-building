# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document
data "aws_iam_policy_document" "key_policy" {
  statement {
    sid       = "Allow direct access to key metadata to the account by root"
    effect    = "Allow"
    resources = ["*"]
    actions   = ["kms:*"]

    condition {
      test     = "ArnLike"
      variable = "aws:PrincipalARN"

      values = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/aws-reserved/sso.amazonaws.com/${data.aws_region.current.name}/AWSReservedSSO_NWL-AdministratorAccess_*",
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/aws-reserved/sso.amazonaws.com/${data.aws_region.current.name}/AWSReservedSSO_NWL-PowerUserAccess_*",
      ]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:PrincipalOrgID"
      values   = [var.aws_org_id]
    }

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }
  }

  statement {
    sid       = "Allow service access"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "kms:Decrypt*",
      "kms:Describe*",
      "kms:Encrypt*",
      "kms:GenerateDataKey*",
      "kms:ReEncrypt*",
    ]

    condition {
      test     = "StringEquals"
      variable = "kms:ViaService"

      values = [
        "lambda.amazonaws.com",
        "secretsmanager.amazonaws.com",
      ]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:PrincipalOrgID"
      values   = [var.aws_org_id]
    }

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }

  statement {
    sid       = "Allow logs service access"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "kms:Decrypt*",
      "kms:Describe*",
      "kms:Encrypt*",
      "kms:GenerateDataKey*",
      "kms:ReEncrypt*",
    ]

    condition {
      test     = "ArnEquals"
      variable = "kms:EncryptionContext:aws:logs:arn"
      values   = ["arn:aws:logs:${data.aws_region.current.name}:*:log-group:/*"]
    }

    principals {
      type        = "Service"
      identifiers = ["logs.${data.aws_region.current.name}.amazonaws.com"]
    }
  }

  statement {
    sid       = "Allow other AWS accounts in the org to use this key"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "kms:Decrypt*",
      "kms:Describe*",
      "kms:Encrypt*",
      "kms:GenerateDataKey*",
      "kms:ReEncrypt*",
    ]

    condition {
      test     = "StringEquals"
      variable = "aws:PrincipalOrgID"
      values   = [var.aws_org_id]
    }

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }
}
