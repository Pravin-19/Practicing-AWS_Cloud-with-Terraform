# output "credentials" {
#   value = var.credentials
#   sensitive = true
# }

# output "all_locations" {
#   value = local.all_locations
# }
# output "unique_locations" {
#   value = local.unique_locations
# }

output "max_cost" {
  value = local.max_cost
}

output "positive_cost" {
  value = local.positive_cost
}

output "min_cost" {
  value = local.min_cost
}

output "total_cost" {
  value = local.total_cost
}

output "avg_cost" {
  value = local.avg_cost
}

output "data_vpc" {
  value = data.aws_vpc.default_vpc
}

output "aws-ami" {
  value = data.aws_ami.ami
}

output "ec2" {
  value = aws_instance.example
}
