resource "aws_ssm_parameter" "kms_arn" {
  name        = "/prod/package-builder/kms/arn"
  description = "The ARN of the KMS key used for this service."
  type        = "SecureString"
  value       = aws_kms_key.s3_buckets.arn

  tags = module.aws_resource_tags.common_tags
}

resource "aws_ssm_parameter" "kms_key_id" {
  name        = "/prod/package-builder/kms/key_id"
  description = "The ID of the KMS key used for this service."
  type        = "SecureString"
  value       = aws_kms_key.s3_buckets.key_id

  tags = module.aws_resource_tags.common_tags
}

resource "aws_ssm_parameter" "kms_alias_arn" {
  name        = "/prod/package-builder/kms/alias/arn"
  description = "The ARN of the KMS alias used for this service."
  type        = "SecureString"
  value       = aws_kms_alias.s3_buckets.arn

  tags = module.aws_resource_tags.common_tags
}

resource "aws_ssm_parameter" "kms_alias_name" {
  name        = "/prod/package-builder/kms/alias/name"
  description = "The name of the KMS alias used for this service."
  type        = "SecureString"
  value       = aws_kms_alias.s3_buckets.name

  tags = module.aws_resource_tags.common_tags
}
