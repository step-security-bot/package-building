data "aws_ssm_parameter" "kms_arn" {
  name            = "/prod/package-builder/kms/arn"
  with_decryption = true
}
