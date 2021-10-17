{
  "command": ["echo", "test"],
  "image": "busybox",
  "resourceRequirements": [
    {"type": "VCPU", "value": "0.25"},
    {"type": "MEMORY", "value": "512"}
  ],
  "networkConfiguration": {
    "assignPublicIp": "ENABLED"
  },
  "fargatePlatformConfiguration": {
    "platformVersion": "LATEST"
  },
  "executionRoleArn": "${execution_role_arn}"
}
