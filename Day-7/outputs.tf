output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}
output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.example[*].id
}
output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.aws_sg.id
}
output "security_group_rule_id" {
  description = "The ID of the security group rule"
  value       = aws_security_group_rule.example.id
}
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.vpc.cidr_block
}
output "instance_public_ips" {
  description = "The public IPs of the EC2 instances"
  value       = aws_instance.example[*].public_ip
}
output "security_group_rule_cidr_blocks" {
  description = "The CIDR blocks associated with the security group rule"
  value       = aws_security_group_rule.example.cidr_blocks
}
output "availability_zone_used" {
  description = "The availability zone used for the EC2 instances"
  value       = aws_instance.example[0].availability_zone
}
output "monitoring_status" {
  description = "The monitoring status of the EC2 instances"
  value       = aws_instance.example[*].monitoring
}
output "tags_assigned" {
  description = "The tags assigned to the VPC"
  value       = aws_vpc.vpc.tags
}
output "region_used" {
  description = "The AWS region where resources are created"
  value       = var.region
}
output "environment" {
  description = "The environment variable used for tagging"
  value       = var.environment
}
output "instance_count" {
  description = "The number of EC2 instances created"
  value       = var.instance_count
}
output "associate_public_ip_address" {
  description = "Whether public IP addresses are associated with the instances"
  value       = var.associate_public_ip_address
}
