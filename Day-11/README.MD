##
# Function --> which makes our life easier 
# No custom functions can be created 


# Terraform Functions Learning Guide - AWS Edition (Day 11-12)

## 📚 Overview

Welcome to the Terraform Functions comprehensive learning guide! This module covers 5 Terraform's built-in functions through  hands-on assignments. Each assignment focuses on specific functions and real-world use cases.

---

## 🎯 Learning Objectives

By the end of this module, you will:
1. Master Terraform's built-in functions across all categories
2. Understand when and how to use each function type
3. Know how to combine multiple functions effectively
4. Be proficient with the Terraform console for testing
5. Implement proper validation and error handling
6. Handle sensitive data securely
7. Create dynamic, reusable configurations

---

## Console Commands

Practice these fundamental commands in `terraform console` before starting the assignments:

```hcl
# Basic String Manipulation
lower("HELLO WORLD")
max(5, 12, 9)
trim("  hello  ")
reverse(["a", "b", "c"])
```

## 📋 Assignments Overview

| # | Assignment | Functions | Difficulty | AWS Resources |
|---|------------|-----------|------------|---------------|
| 1 | Project Naming | `lower`, `replace` | ⭐ | Resource Group |
| 2 | Resource Tagging | `merge` | ⭐ | VPC |
| 3 | S3 Bucket Naming | `substr`, `replace`, `lower` | ⭐⭐ | S3 Bucket |
| 4 | Security Group Ports | `split`, `join`, `for` | ⭐⭐ | Security Group |
| 5 | Environment Lookup | `lookup` | ⭐⭐ | EC2 Instance |

---

## 🚀 Quick Start

```bash
# Navigate to directory
cd /home/baivab/repos/Terraform-Full-Course-Aws/lessons/day11-12

# Initialize
terraform init

# Start with Assignment 1 (already uncommented)
terraform plan
terraform apply -auto-approve

# View outputs
terraform output

# View Output - If no state file created also ...
terraform refresh

# Cleanup
terraform destroy -auto-approve
```

---

## 📖 Function Categories

### String Functions
`lower()`, `upper()`, `replace()`, `substr()`, `trim()`, `split()`, `join()`, `chomp()`

### Numeric Functionss
`abs()`, `max()`, `min()`, `ceil()`, `floor()`, `sum()`
 
### Collection Functions
`length()`, `concat()`, `merge()`, `reverse()`, `toset()`, `tolist()`

### Type Conversion
`tonumber()`, `tostring()`, `tobool()`, `toset()`, `tolist()`

### File Functions
`file()`, `fileexists()`, `dirname()`, `basename()`

### Date/Time Functions
`timestamp()`, `formatdate()`, `timeadd()`art

### Validation Functions
`can()`, `regex()`, `contains()`, `startswith()`, `endswith()`

### Lookup Functions
`lookup()`, `element()`, `index()`

---

## ✅ Assignment Summary

### Assignment 1: Project Naming ⭐
Transform "Project ALPHA Resource" → "project-alpha-resource"

**Functions:** `lower()`, `replace()`  
**Status:** ✅ Active by default

### Assignment 2: Resource Tagging ⭐
Merge default and environment tags

**Function:** `merge()`

### Assignment 3: S3 Bucket Naming ⭐⭐
Sanitize bucket names for AWS compliance

**Functions:** `substr()`, `replace()`, `lower()`

### Assignment 4: Security Group Ports ⭐⭐
Transform "80,443,8080" into security group rules

**Functions:** `split()`, `join()`, `for`

### Assignment 5: Environment Lookup ⭐⭐
Select instance size by environment

**Function:** `lookup()`

---


---

## 📚 Resources

- [Terraform Functions Docs](https://www.terraform.io/language/functions)
- [Terraform Console](https://www.terraform.io/cli/commands/console)
- [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)


---

## 🚀 Next Steps

After completing all assignments:
- ✅ Understand all function categories
- ✅ Know when to use each function
- ✅ Comfortable with terraform console


---

**Happy Learning! 🎉**