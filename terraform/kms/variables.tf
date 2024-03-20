variable "aws_org_id" {
  description = "The ID of the AWS Organization to which the KMS key belongs. This is used to restrict access to the KMS key to only principals in the specified organization."
  type        = string
}
