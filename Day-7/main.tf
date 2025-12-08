resource "aws_vpc" "vpc" {
  cidr_block = "10.10.0.0/16"
  tags=var.tags
}

resource "aws_instance" "example" {
  #count = var.instance_count 
  count = var.config.instance_count
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"
  region = var.config.region
  monitoring = var.config.monitoring_enabled
  #region = var.region
  #monitoring = var.monitoring_enabled
  
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone = var.availability_zone[1]
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "aws_sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "allow_tls"
  }
}


resource "aws_security_group_rule" "example" {
  type              = "ingress"
  from_port         = var.ingress_values[0]
  to_port           = var.ingress_values[1]
  protocol          = var.ingress_values[2]
  cidr_blocks       = var.aws_cidr_block
  security_group_id = aws_security_group.aws_sg.id
}
