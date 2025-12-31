resource "aws_instance" "example" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = var.instance_type
  # instance_type = var.tags.Environment == "Dev" ? "t3.small" : "t3.micro"
  # count = var.counts != 0 ? var.counts : 3
  tags = var.tags
}


# Store sensitive configuration in AWS Secrets Manager
resource "aws_secretsmanager_secret" "app_config" {
  name        = "app-configuration-${formatdate("YYYYMMDD-hhmm", timestamp())}"
  description = "Application configuration from file"
  
  tags = {
    Name        = "app-config"
    Sensitive   = "true"
    ConfigFile  = "./config.json"
  }
}

resource "aws_secretsmanager_secret_version" "app_config" {
  secret_id     = aws_secretsmanager_secret.app_config.id
  secret_string = jsonencode(local.config_data)
}

