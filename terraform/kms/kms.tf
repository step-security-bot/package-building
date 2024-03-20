# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key
resource "aws_kms_key" "s3_buckets" {
  description              = "Used to encrypt S3 buckets. Defined by "
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"

  is_enabled                         = true
  deletion_window_in_days            = 30
  bypass_policy_lockout_safety_check = false
  enable_key_rotation                = true
  multi_region                       = false

  # These are the policies which restrict who can access this key.
  policy = data.aws_iam_policy_document.key_policy.json

  tags = {
    app         = "package-builder"
    env         = "prod"
    deployed_at = timestamp()
    deployed_by = data.aws_caller_identity.current.arn
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias
resource "aws_kms_alias" "s3_buckets" {
  name          = "alias/s3-buckets"
  target_key_id = aws_kms_key.s3_buckets.key_id
}
