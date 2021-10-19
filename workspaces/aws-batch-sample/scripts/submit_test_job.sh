#!/bin/bash
set -euo pipefail

name_suffix="$1"

aws batch --profile my-aws submit-job \
  --job-name "test-${name_suffix}" \
  --job-queue tf-test-batch-job-queue \
  --job-definition tf_test_batch_job_definition
