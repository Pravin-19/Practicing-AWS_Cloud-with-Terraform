resource "aws_security_group" "aws-sg" {
  name        = "allow_tls"
  tags = var.tags
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
}


resource "aws_instance" "ec2" {
#   ami           = "ami-0b0ea68c435eb488d" # Amazon Ubuntu AMI
  ami           = "ami-0ff8a91507f77f867" # Amazon Linux 2 AMI
  instance_type = var.allowed_vm_types[1 ]
  region        = tolist(var.allowed_region)[1]
  tags          = var.tags
  vpc_security_group_ids =[aws_security_group.aws-sg.id]
  lifecycle {
    create_before_destroy = true
    prevent_destroy = false
    replace_triggered_by =[
        aws_security_group.aws-sg
    ]
  }
}

# resource "aws_launch_template" "lt" {
#   name_prefix   = "tf-example-lt"
#   image_id      = "ami-0ff8a91507f77f867"
#   instance_type = "t2.micro"
# }

# resource "aws_autoscaling_group" "tf_asg" {
#   availability_zones = ["us-east-1a"]
#   desired_capacity   = 2
#   max_size           = 3
#   min_size           = 1

#   launch_template {
#     id      = aws_launch_template.lt.id
#     version = "$Latest"
#   }

#   lifecycle{
#     ignore_changes = [desired_capacity]
#   } 
# }

resource "aws_s3_bucket" "compliance_bucket" {
  bucket = var.bucket_name
#   bucket = "tf-compliance-bucket-1234567890"

#   tags = {
#     Environment = "Development"
#     Project     = "TerraformPractice"
#     Compliance  = "yes"
#   }
    # tags = var.tags
  tags = merge(
  var.tags,
  {
    Compliance = "yes"
  }
)

  lifecycle {
    precondition {
        #s3 name must have numbers
        condition     = can(regex("[0-9]", var.bucket_name))
        error_message = "Bucket name must contain at least one numeric character."
        

    
    }
    postcondition {
        condition = contains(keys(self.tags),"Compliance")
        error_message = "Tag 'Compliance' is required for this bucket."
    }

    #The "self" object is not available in precondition block. This object can be used only in resource provisioner, connection, and postcondition blocks.
  }
}