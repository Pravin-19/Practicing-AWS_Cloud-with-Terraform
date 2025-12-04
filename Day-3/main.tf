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