output "s3_bucket_name" {
  description = "The S3 bucket name."
  value       = "nwlabs-${data.aws_caller_identity.current.account_id}-package-builder"
}

output "bucket" {
  description = "S3 bucket data."
  value       = aws_s3_bucket.package_builder
}

output "iam_policy" {
  description = "The S3 bucket policy."
  value       = data.aws_iam_policy_document.deny_insecure.json
}
