#!/bin/bash
set -euo pipefail

interval="$1"
job_name_prefix="five_minutes_sleeper-$(date +%Y%m%d%H%M%S)"

export AWS_PAGER=""

for i in $(seq 0 9); do
  sleep "${interval}"
  aws batch --profile my-aws submit-job \
    --job-name "${job_name_prefix}-${i}" \
    --job-queue tf-test-batch-job-queue \
    --job-definition five_minutes_sleeper
done
