# AWS Provision Infra Module
Terraform module which creates the whole VPNBeast infrastructure at once. Please see [MODULE.md](MODULE.md) for module documentation.

> This module assumes that a state bucket called `thevpnbeast-terraform-states` already exists on region `us-east-1`. If not, please first run [state-bucket-terraform module](https://github.com/thevpnbeast/state-bucket-terraform)

## Usage
You can use below module configuration in your terraform configuration:
```
module "thevpnbeast-infra" {
  source                    = "git::https://github.com/thevpnbeast/provision-infra-terraform.git"
  ...
}
```