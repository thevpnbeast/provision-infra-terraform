module "terraform-states-thevpnbeast" {
  source = "git::https://github.com/thevpnbeast/state-bucket-terraform.git?ref=v0.0.1"

  bucket_name        = var.state_bucket_name
  versioning_enabled = var.state_bucket_versioning_enabled
  encryption_enabled = var.state_bucket_encryption_enabled
  lock_table_enabled = var.state_bucket_lock_table_enabled
#   tags               = var.tags
}

module "network-thevpnbeast" {
  source = "git::https://github.com/thevpnbeast/network-terraform.git?ref=v0.0.1"

  aws_region = var.aws_region
  vpc_name   = var.vpc_name
  tags       = var.tags
}