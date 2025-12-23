
resource "aws_vpc" "terraform-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = local.common_tags
}

resource "aws_s3_bucket" "s3" {
  bucket = local.formatted_bucketname

  tags = merge(
    {
      use_case="storing assets"
    },
    local.formatted_s3_tags
  )
}

