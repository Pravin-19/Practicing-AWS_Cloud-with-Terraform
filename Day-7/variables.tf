variable "instance_count" {
    type = number
    description = "Number of Ec2 instances to Create"
}
variable "region" {
  type=string
  description = "Region to create the AWS services"
}
variable "aws_cidr_block" {
  type = set(string)
  description = "Set of CIDR blocks for security group ingress rules"
}

variable "monitoring_enabled" {
  type = bool
  description = "Enable detailed monitoring for EC2 instances"
  default = true
}
variable "associate_public_ip_address" {
    type = bool
    description = "Associate a public IP address with the instance"
    default = true
}

variable "availability_zone" {
  type = list(string)
  description = "List of availability zones"

}



variable "environment" {
  type = string
  description = "The environment for resource tagging"

}

variable "tags" {
  type = map(string)
  description = "A map of tags to assign to resources"
  default = {
    Name = "my_vpc"
    Environment = "Dev"
    created_by = "Pravin"
    Project = "Terraform AWS"
  }
}

variable "ingress_values" {
  type = tuple([ number, number, string ])
  description = "Tuple containing from_port, to_port, and protocol for security group rule"
  default = [ 0, 65535, "tcp" ]
}

variable "config"{
  type = object({
    instance_count = number
    region = string
    monitoring_enabled = bool
  })
  description = "Configuration object for multiple variables"
}
