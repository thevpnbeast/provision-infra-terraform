### we are not creating state bucket here since we should create it externally with s3-terraform module
# module "state-bucket-thevpnbeast" {
#   source = "git::https://github.com/thevpnbeast/s3-terraform.git?ref=main"

#   bucket_name        = var.state_bucket_name
#   versioning_enabled = var.state_bucket_versioning_enabled
#   encryption_enabled = var.state_bucket_encryption_enabled
#   lock_table_enabled = var.state_bucket_lock_table_enabled
#   tags               = var.tags
# }

module "release-bucket-thevpnbeast" {
  source = "git::https://github.com/thevpnbeast/s3-terraform.git?ref=main"

  bucket_name        = var.release_bucket_name
  versioning_enabled = var.release_bucket_versioning_enabled
  encryption_enabled = var.release_bucket_encryption_enabled
  lock_table_enabled = var.release_bucket_lock_table_enabled
  tags               = var.tags
}

module "network-thevpnbeast" {
  source = "git::https://github.com/thevpnbeast/network-terraform.git?ref=main"

  aws_region      = var.aws_region
  vpc_name        = var.vpc_name
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  vpc_cidr        = var.vpc_cidr
  tags            = var.tags
}

module "mysql" {
  source          = "git::https://github.com/thevpnbeast/ec2-terraform.git?ref=main"
  aws_region      = var.aws_region
  vpc_id          = module.network-thevpnbeast.vpc_id
  private_subnets = module.network-thevpnbeast.private_subnets
  public_subnets  = module.network-thevpnbeast.public_subnets
  is_private_vpc  = false
  tags            = var.tags
}
