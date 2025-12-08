terraform {
  # backend "s3" {
  #   bucket = "pravin-terraform-bucket-for-statefile"
  #   key    = "dev/terraform/terraform.tfstate"
  #   region = "us-east-1"
  #   use_lockfile = true
  # }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.24.0"
    }
  }
}