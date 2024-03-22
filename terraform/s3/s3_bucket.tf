# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "package_builder" {
  bucket              = "nwlabs-${data.aws_caller_identity.current.account_id}-package-builder"
  force_destroy       = false
  object_lock_enabled = false

  tags = module.aws_resource_tags.common_tags
}

# BucketOwnerEnforced means that traditional ACLs are disabled and only bucket owner has access to the objects.
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls
resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.package_builder.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.package_builder.id
  policy = data.aws_iam_policy_document.deny_insecure.json
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.package_builder.id

  versioning_configuration {
    # mfa_delete = "Enabled"
    status = "Enabled"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration
resource "aws_s3_bucket_server_side_encryption_configuration" "sse_config" {
  bucket = aws_s3_bucket.package_builder.id

  rule {
    bucket_key_enabled = true

    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = data.aws_ssm_parameter.kms_arn.value
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration
resource "aws_s3_bucket_lifecycle_configuration" "lifecycle" {
  bucket = aws_s3_bucket.package_builder.id

  rule {
    id     = "storage"
    status = "Enabled"

    transition {
      days          = 365
      storage_class = "INTELLIGENT_TIERING"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.package_builder.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
