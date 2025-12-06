resource "aws_vpc" "terraform-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
   Name =  "terraform-vpc"
   Environment = "Dev"
  }
}

resource "aws_s3_bucket" "my-terraform-bucket" {
  bucket = "30days-of-aws-terraform-pravin-v"

  tags = {
    Name        = "Terraform Bucket"
    Environment = "Dev"
    vpc = aws_vpc.terraform-vpc.id
  }
}

# Output values
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.terraform-vpc.id
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.my-terraform-bucket.id
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.my-terraform-bucket.arn
}

output "current_workspace_name" {
  value = terraform.workspace
}

variable "HCP_TERRAFORM_RUN_ID" {
  type    = string
  default = ""
}

output "remote_execution_determine" {
  value = "Remote run environment? %{if var.HCP_TERRAFORM_RUN_ID != ""}Yes%{else}No this is local%{endif}!"
}
