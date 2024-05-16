terraform {
  required_version = "1.8.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region  = "sa-east-1"
  profile = "terraform"
}