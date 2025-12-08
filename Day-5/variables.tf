variable "method" {
    default="terraform"
}
 variable "vpc-name" {
    type = string
    default="terraform-vpc"
}

variable "environment" {
    type=string
    default="Dev"
}
variable "project_name" {
  default = "Verizon"
}