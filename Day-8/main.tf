
#depends_on    --> Explicitly specify dependencies between resources
#count         --> Create multiple instances of a resource
#for_each      --> Create multiple instances of a resource using a map or set
#lifecycle     --> Customize resource lifecycle behavior (create_before_destroy, prevent_destroy, ignore_changes
#provider      --> Specify which provider configuration to use for a resource
#provisioner   --> Execute scripts or commands on the resource after creation or before destruction


resource "aws_s3_bucket" "s3_bucket" {
  count  = length(var.bucket_name)
  bucket = var.bucket_name[count.index]

  tags = var.tags
}
resource "aws_s3_bucket" "s3_bucket_set" {
  for_each = var.bucket_name_set
  bucket   = each.value

  tags = var.tags

  depends_on = [aws_s3_bucket.s3_bucket] # Ensure s3_bucket_set is created after s3_bucket --> Explicit Dependency
}



