output "ec2_availability_zones" {
  description = "Availability zone of the created instance"
  value       = module.mysql.*.ec2_availability_zones
}

output "ec2_private_ips" {
  description = "List of private ips of created instances"
  value       = module.mysql.*.ec2_private_ips
}

output "ec2_public_ips" {
  description = "List of public ips of created instances"
  value       = module.mysql.*.ec2_public_ips
}

output "ec2_dns" {
  description = "List of DNS of created instances"
  value       = module.mysql.*.all_ec2_dns
}