locals {
   common_name="${var.project_name}-${var.environment}"
   s3_bucket_name= "${local.common_name}-S3"
   common_tags= {
    Name =  local.common_name
    created_using = "Created_using-${var.method}"
   }
   
}