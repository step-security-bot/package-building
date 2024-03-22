module "aws_resource_tags" {
  # Switch to a tag once one exists.
  source = "git@github.com:northwood-labs/mod-aws-resource-tags.git?ref=main"

  app = "package-builder"
  env = "prod"
}
