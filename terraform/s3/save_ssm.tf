resource "aws_ssm_parameter" "s3_bucket_name" {
  name        = "/prod/package-builder/s3/name"
  description = "The name of the S3 bucket used for this service."
  type        = "SecureString"
  value       = "nwlabs-${data.aws_caller_identity.current.account_id}-package-builder"

  tags = module.aws_resource_tags.common_tags
}
