output "kms_key" {
  description = "The values of the KMS key."
  value       = aws_kms_key.s3_buckets
}

output "kms_alias" {
  description = "The values of the KMS alias."
  value       = aws_kms_alias.s3_buckets
}

output "key_id_url" {
  description = "The console URL for the KMS key."
  value       = "https://${data.aws_region.current.name}.console.aws.amazon.com/kms/home?region=${data.aws_region.current.name}#/kms/keys/${aws_kms_key.s3_buckets.key_id}"
}
