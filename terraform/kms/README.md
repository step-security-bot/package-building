# KMS Key

> 🚨 **IMPORTANT:** There is a 99.999% chance that you DO NOT need to run this, ever. This should only be run if AWS has gone into meltdown.

Create a customer-managed KMS key which can be used to encrypt S3 buckets. There are policies in this repo which grant read/decrypt access to this key from other resources.

**This key should be deployed only to the Production account. Everything else will read from there.**

When logged into Production, you can use  to view the key.

## Notes

* You'll need to have already [setup AWS Vault](https://github.com/northwood-labs/aws-sso-vault).

* Must use [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/).

* The `TERRAGRUNT_TFPATH=tofu` environment variable should be set.

* The `AWS_REGION` environment variable should be set — which should be automatic if you're using AWS Vault.

* <https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html>

## Environments

This KMS key only exists in the _Production_ account. Both Production and Non-Prod environments use this one key for encryption.

## Deployments

Don't.

It already exists, so unless there is a catastrophic failure, leave it alone. _Catastrophic_ is defined as:

* The KMS key was deleted from the _Production_ account.
* The _Production_ account no longer exists.

If the KMS key is exposed to the public, log into the AWS console and _rotate_ the key. _Deleting_ the key will immediately break every bucket we have. So never do that.

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
aws-vault exec prod-admin -- terragrunt output -json kms_key | jq '.'
aws-vault exec prod-admin -- terragrunt output -json kms_alias | jq '.'
aws-vault exec prod-admin -- terragrunt output -json key_id_url | jq -Mr '.'
```
