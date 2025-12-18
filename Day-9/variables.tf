variable "allowed_vm_types" {
  description = "List of allowed VM types"
  type        = list(string)
  default     = ["t2.micro", "t2.small", "t2.medium"]
}

variable "allowed_region" {  # in sets
  description = "Set of allowed AWS regions"
  type        = set(string)
  default     = ["us-east-2", "us-east-1", "eu-west-1"]
}

variable "tags" {
  description = "Map of tags to sassign to resources"
  type        = map(string)
  default     = {
    Environment = "Development"
    Project     = "TerraformPractice"
  }
}

variable "bucket_name" {
    default = "tf-compliance-bucket-123"
    description = "The name of the S3 bucket"
    type = string
}


