data "aws_ssm_parameter" "org_id" {
  name            = "/global/org/id"
  with_decryption = true
}

data "aws_ssm_parameter" "kms_arn" {
  name            = "/prod/package-builder/kms/arn"
  with_decryption = true
}
