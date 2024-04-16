# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document
data "aws_iam_policy_document" "all" {
  source_policy_documents = [
    # data.aws_iam_policy_document.cloudfront_access.json,
    # data.aws_iam_policy_document.deny_insecure.json,

    data.aws_iam_policy_document.public_read.json,
  ]
}
