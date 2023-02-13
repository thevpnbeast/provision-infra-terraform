# provision-infra-terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network-thevpnbeast"></a> [network-thevpnbeast](#module\_network-thevpnbeast) | git::https://github.com/thevpnbeast/network-terraform.git | main |
| <a name="module_release-bucket-thevpnbeast"></a> [release-bucket-thevpnbeast](#module\_release-bucket-thevpnbeast) | git::https://github.com/thevpnbeast/s3-terraform.git | main |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Name of the region on AWS | `string` | `"us-east-1"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of private subnets to be used | `list(string)` | <pre>[<br>  "10.0.1.0/24"<br>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | List of public subnets to be used | `list(string)` | <pre>[<br>  "10.0.10.0/24"<br>]</pre> | no |
| <a name="input_release_bucket_encryption_enabled"></a> [release\_bucket\_encryption\_enabled](#input\_release\_bucket\_encryption\_enabled) | You want encryption on the bucket or not | `bool` | `true` | no |
| <a name="input_release_bucket_lock_table_enabled"></a> [release\_bucket\_lock\_table\_enabled](#input\_release\_bucket\_lock\_table\_enabled) | You want DynamoDB lock table to store lock files or not | `bool` | `false` | no |
| <a name="input_release_bucket_lock_table_name"></a> [release\_bucket\_lock\_table\_name](#input\_release\_bucket\_lock\_table\_name) | Unique name of the lock table | `string` | `"thevpnbeast-release-locks"` | no |
| <a name="input_release_bucket_name"></a> [release\_bucket\_name](#input\_release\_bucket\_name) | Unique name of the bucket | `string` | `"thevpnbeast-releases-1"` | no |
| <a name="input_release_bucket_versioning_enabled"></a> [release\_bucket\_versioning\_enabled](#input\_release\_bucket\_versioning\_enabled) | You want versioning on the bucket or not | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the networking resources | `map(string)` | <pre>{<br>  "project": "thevpnbeast"<br>}</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR for the target VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the target VPC to create | `string` | `"thevpnbeast-vpc"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
