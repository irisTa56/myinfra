#!/bin/bash

set -eu

terraform refresh
terraform_command="nonsensitive(local.$1)"
eval "cat $(echo "$terraform_command" | terraform console)"
