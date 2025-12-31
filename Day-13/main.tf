
data "aws_vpc" "default_vpc" {
  filter {
    name = "tag:Name"
    values = ["default"]
  }
}

data "aws_ami" "ami" {
  most_recent      = true
  # name_regex       = "^ami-[0-9]{3}"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
resource "aws_instance" "example" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  # subnet_id = 
  # instance_type = var.tags.Environment == "Dev" ? "t3.small" : "t3.micro"
  # count = var.counts != 0 ? var.counts : 3
  tags = var.tags
}


output "data_vpc" {
  value = data.aws_vpc.default_vpc
}

output "aws-ami" {
  value = data.aws_ami.ami
}