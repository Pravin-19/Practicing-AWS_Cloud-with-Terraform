variable "tags" {
  type = map(string)
  description = "A map of tags to assign to resources"
  default = {
    Name = "my_vpc"
    Environment = "Dev"
    created_by = "Pravin"
    Project = "Terraform AWS"
  }
}


# Validation Function

### Validation Functions
##   `can()`, `regex()`, `contains()`, `startswith()`, `endswith()`

variable "instance_type" {
  default = "t2.small"

  validation {
    condition = length(var.instance_type) >= 8 && length(var.instance_type) <= 20
    error_message = "Length of the variable character must between 8 and 20"
  }

  validation {
    # condition = regex("^t[2-3//.]", var.instance_type)     ### ERROR MESSAGE for Regex --. without use of can --> 
                #     Error: Error in function call
                # │   on variables.tf line 27, in variable "instance_type":
                # │   27:     condition = regex("^t[2-3//.]", var.instance_type)
                # │     ├────────────────
                # │     │ while calling regex(pattern, string)
                # │     │ var.instance_type is "t1.large"
                # │ Call to function "regex" failed: pattern did not match any part of the given string.
    condition = can(regex("^t[2-3//.]", var.instance_type)) 
    error_message = "The instance type must starts with t2 or t3"
  }

}


##Ends with

variable "Object-Backup" {
  default = "Daily_backup"

  validation {
    condition = endswith(var.Object-Backup, "_backup")
    error_message = "File name should end with '_backup'"
  }
}


#sensitive

variable "credentials" {
  default = "Pravin"
  sensitive = true
}

# ==============================================================================
# ASSIGNMENT 9: Resource Location Management
# ==============================================================================

variable "user_locations" {
  type        = list(string)
  description = "User-specified AWS regions"
  default     = ["us-east-1", "us-west-2", "us-east-1"] # Contains duplicate
}

variable "default_locations" {
  type        = list(string)
  description = "Default AWS regions"
  default     = ["us-west-1"]
}


# ==============================================================================
# ASSIGNMENT 10: Cost Calculation
# ==============================================================================

variable "monthly_costs" {
  type        = list(number)
  description = "Monthly infrastructure costs (can include negative values for credits)"
  default     = [-50, 100, 75, 200]
}
