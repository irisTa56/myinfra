#!/bin/bash
set -euo pipefail

terraform apply -refresh-only
terraform_command="nonsensitive(local.$1)"
eval "cat $(echo "$terraform_command" | terraform console)"
