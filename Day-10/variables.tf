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

variable "region" {
    default="us-east-1"
}

variable "counts"{
    type = number
    default = 2
}

variable "tags" {
    type  = object ({
        Name = string
        Environment = string
        IsPublicIpAssigned = bool
    })
    description = "A object of tags to assign to resources"
    default = {
        Name = "my_vpc"
        Environment = "Dev"
        IsPublicIpAssigned = true
    }
}   

variable "ingress-rules" {
    type = list(object({
        from_port   = number
        to_port     = number
        protocol    = string
        cidr_blocks = list(string)
    }))
    description = "List of ingress rules for security group"
    default = [
        {
            from_port   = 22
            to_port     = 22
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port   = 80
            to_port     = 80
            protocol    = "http"
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}