variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to resources"
  default = {
    Name        = "my_vpc"
    Environment = "Dev"
    created_by  = "Pravin"
    Project     = "Terraform AWS"
  }
}
variable "bucket_name" {
  type        = list(string)
  description = "The name of the S3 bucket"
  #required two buckets to be created
  default = ["my-tf-test-bucket-2024-unique-id-1", "my-tf-test-bucket-2024-unique-id-2"]

}

variable "bucket_name_set" {
  type        = set(string)
  description = "2- S3 bucket's as set"
  default     = ["pravin-tf-set-bucket-2025-unique-id-3", "my-tf-set-bucket-2025-unique-id-4"]
}