locals {
  # Create a local variable to store the ARN of the S3 bucket
  bucket_arn = "arn:aws:s3:::${aws_s3_bucket.package_builder.id}"
}
