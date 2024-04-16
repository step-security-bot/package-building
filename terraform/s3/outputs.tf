output "s3_bucket_name" {
  description = "The S3 bucket name."
  value       = "nwlabs-${data.aws_caller_identity.current.account_id}-package-builder"
}

output "bucket" {
  description = "S3 bucket data."
  value       = aws_s3_bucket.package_builder
}

# output "iam_policy" {
#   description = "The S3 bucket policy."
#   value       = data.aws_iam_policy_document.deny_insecure.json
# }

output "s3_bucket_name_url" {
  description = "The console URL for the S3 bucket."
  value       = "https://s3.console.aws.amazon.com/s3/buckets/${aws_s3_bucket.package_builder.bucket}?region=${data.aws_region.current.name}&bucketType=general&tab=objects"
}
