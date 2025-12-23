variable "method" {
    default="terraform"
}
 variable "vpc-name" {
    type = string
    default="terraform-vpc"
}

variable "environment" {
    type=string
    default="dev"
}
variable "project_name" {
  default = "DBS Verizon Consumer"
}

variable "region" {
    default="us-east-1"
}

variable "default-tags" {
  default = {
    company = "Verizon"
    managedBy="Terraform"
  }
}

variable "environment-tags" {
    default = {
        Env = "dev"
        managedBy = "development-team"
    }
}

variable "bucket-name" {
    default = "KASA printengine Labels !!!"
}

variable "allowed_ports" {
  default = "443,80,9090,65535"
}

variable "allowed_instnaces" {
  default = {
    dev = "t2.small"
    stage = "t2.micro"
    prod  = "t3.large"
  }
}