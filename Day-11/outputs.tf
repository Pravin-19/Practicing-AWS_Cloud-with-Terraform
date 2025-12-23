
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


output "formatted_project_name"{
    value= local.formatted_project_name
}

output "formatted-s3-tags" {
  value=local.formatted_s3_tags
}

output "s3_tags" {
  value = aws_s3_bucket.s3.tags_all
}

output "formatted_bucket_name" {
    value= local.formatted_bucketname
}

output "port-list" {
    value = local.port_list
}

output "sg-rule" {
  value = local.sg_rules
}

output "instnce-size" {
  value = local.formatted_instance_size
}