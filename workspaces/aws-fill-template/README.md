## Prerequisites

- A parameter with name `test_secret` must exist in AWS Systems Manager Parameter Store.

## Scripts

- [scripts/print_filled_file.sh](./scripts/print_filled_file.sh) fills [templates/sample.txt.tpl](./templates/sample.txt.tpl) with a secret value stored as the parameter.
  ```shell
  $ ./scripts/print_filled_file.sh sample
  ```
