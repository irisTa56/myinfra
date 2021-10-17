resource "aws_batch_compute_environment" "fargate_sample" {
  compute_environment_name = "fargate_sample"

  compute_resources {
    max_vcpus          = 16
    security_group_ids = [aws_security_group.aws_batch_security_group.id]
    subnets            = data.aws_subnet_ids.default.ids
    type               = "FARGATE"
  }

  service_role = aws_iam_role.aws_batch_service_role.arn
  type         = "MANAGED"
  depends_on   = [aws_iam_role_policy_attachment.aws_batch_service_role]
}

resource "aws_batch_job_queue" "test_queue" {
  name     = "tf-test-batch-job-queue"
  state    = "ENABLED"
  priority = 1
  compute_environments = [
    aws_batch_compute_environment.fargate_sample.arn,
  ]
}

resource "aws_batch_job_definition" "test" {
  name                  = "tf_test_batch_job_definition"
  type                  = "container"
  platform_capabilities = ["FARGATE"]

  container_properties = templatefile(
    "${path.module}/templates/job_definition.json.tpl",
    { execution_role_arn = aws_iam_role.ecs_task_execution_role.arn }
  )
}
