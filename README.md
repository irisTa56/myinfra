# myinfra

## Usage

- Set some environment variables to fill terraform variables defined in:
    - [workspaces/shared_main_for_aws.tf](./workspaces/shared_main_for_aws.tf)
- Move to one of workspace directory
- Create `backend.hcl` to configure terraform backend
  ```hcl
  // example configuration
  organization = "irisTa56"
  hostname     = "app.terraform.io"
  workspaces {
    name = "aws-fill-template"
  }
  ```
- `$ terraform init -backend-config=backend.hcl`
