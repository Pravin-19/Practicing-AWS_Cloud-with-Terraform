
output "vpc-id" {
    description = "Id of vpc"
    value= aws_vpc.terraform-vpc.id
}

output "Environment"{
    value= var.environment
}
output "Region"{
    value = aws_vpc.terraform-vpc.region
}
output "S3-Bucket"{
    value= aws_s3_bucket.s3.bucket
}
output "S3-Bucket-Id"{
    value= aws_s3_bucket.s3.id
}
