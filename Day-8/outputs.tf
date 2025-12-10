# output "s3_bucket-name" {
#   value       = aws_s3_bucket.s3_bucket[*].bucket
#   description = "The names of the created S3 buckets"
# }

# output "s3_bucket_set-name" {
#   value       = [for b in aws_s3_bucket.s3_bucket_set : b.bucket]
#   description = "The names of the created S3 buckets using for_each"
# }

#for list output
output "s3_bucket-names" {
  value = [for bucket in aws_s3_bucket.s3_bucket : bucket.bucket]
}

#printing bucket ID's
output "s3_bucket-ids" {
  value = [for bucket in aws_s3_bucket.s3_bucket : bucket.id]
}

#for set output
output "s3_bucket_set-names" {
  value = [for bucket in aws_s3_bucket.s3_bucket_set : bucket.bucket]
} 
#printing bucket ID's
output "s3_bucket_set-ids" {
  value = [for bucket in aws_s3_bucket.s3_bucket_set : bucket.id]
}

#output as map -for Bucket set created using for_each
output "s3_bucket_set-map" {
  value = { for k, v in aws_s3_bucket.s3_bucket_set : k => v.id }
  description = "Map of S3 bucket names created using for_each"
}

#output as map -for Bucket created using count
output "s3_bucket-map" {
  value = { for idx, bucket in aws_s3_bucket.s3_bucket : idx => bucket.bucket }
  description = "Map of S3 bucket names created using count"
}


