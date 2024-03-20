# Configure Terragrunt to automatically store .tfstate files in an S3 bucket.
remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }

  config = {
    encrypt = true

    # Require bucket name to be set as an environment variable!
    #   This enables us to manage tags/policies/etc. with normal
    #   shared modules instead of duplicating effort here.
    region         = get_env("AWS_REGION", "us-east-2")
    dynamodb_table = "nwlabs-${get_aws_account_id()}-iac-locks"
    bucket         = "nwlabs-${get_aws_account_id()}-iac-state"
    key            = "package-building/${path_relative_to_include()}/iac.tfstate"

    skip_metadata_api_check = true

    # Note that, for the time being, we do need to set up tags per-project in this file;
    #   Alternatively, make sure your environment uses managed environment variables to fill in things automatically.
    s3_bucket_tags = {
      app = "iac-state"
    }

    # Same as above, but now for the DynamoDB table used for locking.
    #   https://github.com/gruntwork-io/terragrunt#create-remote-state-and-locking-resources-automatically
    dynamodb_table_tags = {
      app = "iac-state"
    }
  }
}
