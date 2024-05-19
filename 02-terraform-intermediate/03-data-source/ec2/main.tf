terraform {
  required_version = "1.8.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-177279739817"
    key="dev/03-data-sources-s3/terraform.tfstate"
    region = "sa-east-1"
    profile = "terraform"
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "terraform"
}