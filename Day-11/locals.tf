locals {
   common_name="${var.project_name}-${var.environment}"
   # s3_bucket_name= "${local.common_name}-S3"
   common_tags= {
    Name =  local.common_name
    created_using = "Created_using-${var.method}"
   }
   
}


locals {
   formatted_project_name = lower(replace(var.project_name, " ", "-"))
   formatted_s3_tags =  merge(var.default-tags, var.environment-tags)
   formatted_bucketname= substr(lower(replace(trim(var.bucket-name,"!")," ","")), 0, 63)

   port_list = split(",", var.allowed_ports)

   sg_rules = [
      for val in local.port_list:
         {
            name = "port-${val}"
            port_list = val ,
            description = "Allow traffic port on ${val}"
         }
   ]

   formatted_instance_size = lookup(var.allowed_instnaces, var.environment, "t1.micro")
}
# "KASA printengine Labels !!!"




