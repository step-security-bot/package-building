# S3 Bucket

> 🚨 **IMPORTANT:** There is a 99.999% chance that you DO NOT need to run this, ever. This should only be run if AWS has gone into meltdown.

**This key should be deployed only to the Production account (`381491855445`).**

When logged into Production (`381491855445`), you can use [this link]() to view the bucket.

## Notes

* You'll need to have already [setup AWS Vault](https://github.com/northwood-labs/aws-sso-vault).

* Must use [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/).

* The `TERRAGRUNT_TFPATH=tofu` environment variable should be set.

* The `AWS_REGION` environment variable should be set — which should be automatic if you're using AWS Vault.

## Environments

This S3 bucket only exists in the _Production_ account. Both Production and Non-Prod environments use this one key for encryption.

## Deployments

Don't.

It already exists, so unless there is a catastrophic failure, leave it alone. _Catastrophic_ is defined as:

* The S3 bucket was deleted from the _Production_ account.
* The _Production_ account no longer exists.

## Deploy

```bash
export AWS_REGION=us-east-2
export TERRAGRUNT_TFPATH=tofu
aws-vault exec prod-admin -- terragrunt init -reconfigure
aws-vault exec prod-admin -- terragrunt providers lock \
    -platform=windows_amd64 \
    -platform=darwin_amd64 \
    -platform=darwin_arm64 \
    -platform=linux_amd64 \
    -platform=linux_arm64 \
    ;
aws-vault exec prod-admin -- terragrunt refresh
aws-vault exec prod-admin -- terragrunt plan -out tfplan
aws-vault exec prod-admin -- terragrunt apply tfplan
```

## Read Outputs

```bash
aws-vault exec prod-admin -- terragrunt output -json s3_bucket_name | jq '.'
aws-vault exec prod-admin -- terragrunt output -json iam_policy | jq 'fromjson'
aws-vault exec prod-admin -- terragrunt output -json bucket | jq '.'
```
