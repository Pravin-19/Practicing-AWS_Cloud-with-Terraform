
resource "aws_vpc" "terraform-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = local.common_tags
}

resource "aws_s3_bucket" "s3" {
  bucket = local.s3_bucket_name

  tags =local.common_tags
}
