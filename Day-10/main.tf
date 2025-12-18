#Conditional Expressions in Terraform

resource "aws_instance" "example" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
#   instance_type = "t3.micro"
  instance_type = var.tags.Environment == "Dev" ? "t3.small" : "t3.micro"
  count = var.counts != 0 ? var.counts : 1
  tags = var.tags
}



# resource "aws_security_group" "sg" {
#   name        = "${var.vpc-name}-sg"
#   description = "Security group for ${var.project_name} in ${var.environment} environment"
#   vpc_id      = aws_vpc.main.id

#   dynamic "ingress" {
#     for_each = var.ingress-rules
#     content {
#       from_port   = ingress.value.from_port
#       to_port     = ingress.value.to_port
#       protocol    = ingress.value.protocol
#       cidr_blocks = ingress.value.cidr_blocks
#     }
#   }

#   tags = var.tags
# }

resource "aws_security_group" "example" {
  # ... other configuration ...
    name = "${var.method}-${var.project_name}-${var.environment}-sg"
    
    description = "Security group for ${var.project_name} in ${var.environment} environment"

    dynamic "ingress" {
        for_each = var.ingress-rules
        content {
          from_port        = ingress.value.from_port
          to_port          = ingress.value.to_port
          protocol         = ingress.value.protocol
          cidr_blocks      = ingress.value.cidr_blocks
        }
    
  }
}


locals {
    instances = aws_instance.example
}

output "Instance-id"{
    value = local.instances[0].id
    # value = aws_instance.example[0].id
    # value = {
    #     for indx, val in aws_instance.example: 
    #         indx => val.id 
    # }
}