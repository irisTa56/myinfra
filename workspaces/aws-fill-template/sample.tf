data "aws_ssm_parameter" "test_secret" {
  name = "test-secret"
}

locals {
  sample = templatefile(
    "${path.module}/templates/sample.txt.tpl",
    { secret = data.aws_ssm_parameter.test_secret.value }
  )
}
