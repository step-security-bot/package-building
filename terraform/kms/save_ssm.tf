resource "aws_ssm_parameter" "s3_arn" {
  name        = "/prod/package-builder/s3/arn"
  description = "The ARN of the S3 bucket used for this service."
  type        = "SecureString"
  value       = aws_s3_bucket.package_builder.arn

  tags = {
    app         = "package-builder"
    env         = "prod"
    deployed_at = timestamp()
    deployed_by = data.aws_caller_identity.current.arn
  }
}

resource "aws_ssm_parameter" "regional_domain" {
  name        = "/prod/package-builder/s3/regional_domain"
  description = "The regional domain of the S3 bucket used for this service."
  type        = "SecureString"
  value       = aws_s3_bucket.package_builder.bucket_regional_domain_name

  tags = {
    app         = "package-builder"
    env         = "prod"
    deployed_at = timestamp()
    deployed_by = data.aws_caller_identity.current.arn
  }
}

resource "aws_ssm_parameter" "region" {
  name        = "/prod/package-builder/s3/region"
  description = "The region of the S3 bucket used for this service."
  type        = "SecureString"
  value       = aws_s3_bucket.package_builder.region

  tags = {
    app         = "package-builder"
    env         = "prod"
    deployed_at = timestamp()
    deployed_by = data.aws_caller_identity.current.arn
  }
}
