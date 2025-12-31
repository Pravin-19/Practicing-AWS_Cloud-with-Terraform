# locals {
#    common_name="${var.project_name}-${var.environment}"
#    # s3_bucket_name= "${local.common_name}-S3"
#    common_tags= {
#     Name =  local.common_name
#     created_using = "Created_using-${var.method}"
#    }
   
# }


# locals {
#    formatted_project_name = lower(replace(var.project_name, " ", "-"))
#    formatted_s3_tags =  merge(var.default-tags, var.environment-tags)
#    formatted_bucketname= substr(lower(replace(trim(var.bucket-name,"!")," ","")), 0, 63)

#    port_list = split(",", var.allowed_ports)

#    sg_rules = [
#       for val in local.port_list:
#          {
#             name = "port-${val}"
#             port_list = val ,
#             description = "Allow traffic port on ${val}"
#          }
#    ]

#    formatted_instance_size = lookup(var.allowed_instnaces, var.environment, "t1.micro")
# }
# # "KASA printengine Labels !!!"


locals {

    all_locations = concat(var.user_locations, var.default_locations)
    unique_locations = toset(local.all_locations)

    positive_cost = [ for cost in var.monthly_costs: abs(cost) ]
    
    max_cost = max(local.positive_cost...)
    min_cost = min(local.positive_cost...)
    total_cost = sum(local.positive_cost)

    avg_cost= local.total_cost / length(local.positive_cost)
    
    current_timestamp = timestamp()
    format1 = formatdate("YY-MM-DD", local.current_timestamp )
    format2 = formatdate("DDMMYYYY", local.current_timestamp )
    timestamp_name = "backup-${local.format2}"


    #   # Read and parse JSON configuration file
    config_file_exists = fileexists("./config.json")

    config_data = local.config_file_exists ? jsondecode(file("./config.json")) : {
        "database": {
            "host": "localhost",
            "port": 5432,
            "username": "defalut"
        }
    }
}

