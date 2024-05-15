locals {

  ip_file_path = "ips.json"

  common_tags = {
    Service     = "AWS Terraform Leasons"
    Environment = var.environment
    Managedby   = "Terraform"
    Owner       = "Ricardo"
  }
}
