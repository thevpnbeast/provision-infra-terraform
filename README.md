# AWS Provision Infra Module
Terraform module which creates the whole VPNBeast infrastructure at once. Please see [MODULE.md](MODULE.md) for module documentation.

> This module assumes that a state bucket called `thevpnbeast-terraform-states-1` already exists on region `us-east-1`. If not, please first run [s3-terraform module](https://github.com/thevpnbeast/s3-terraform) first to create state bucket.

## Usage
You can use below module configuration in your terraform configuration:
```
module "thevpnbeast-infra" {
  source                    = "git::https://github.com/thevpnbeast/provision-infra-terraform.git"
  ...
}
```