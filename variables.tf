// release bucket related variables
variable "release_bucket_name" {
  type        = string
  default     = "thevpnbeast-releases-1"
  description = "Unique name of the bucket"
}

variable "release_bucket_versioning_enabled" {
  type        = bool
  default     = true
  description = "You want versioning on the bucket or not"
}

variable "release_bucket_encryption_enabled" {
  type        = bool
  default     = true
  description = "You want encryption on the bucket or not"
}

variable "release_bucket_lock_table_enabled" {
  type        = bool
  default     = false
  description = "You want DynamoDB lock table to store lock files or not"
}

variable "release_bucket_lock_table_name" {
  type        = string
  default     = "thevpnbeast-release-locks"
  description = "Unique name of the lock table"
}

// network related variables
variable "vpc_name" {
  description = "Name of the target VPC to create"
  type        = string
  default     = "thevpnbeast-vpc"
}

variable "vpc_cidr" {
  description = "CIDR for the target VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "List of private subnets to be used"
  type        = list(string)
  # default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  default = []
}

variable "public_subnets" {
  description = "List of public subnets to be used"
  type        = list(string)
  # default     = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
  default = ["10.0.10.0/24"]
}

// common variables
variable "tags" {
  description = "Tags for the networking resources"
  type        = map(string)
  default = {
    project = "thevpnbeast"
  }
}

variable "aws_region" {
  description = "Name of the region on AWS"
  type        = string
  default     = "us-east-1"
}
