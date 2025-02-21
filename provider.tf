terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  backend "s3" {
    bucket = "tf-state-hsn-test2013"
    key    = "test-project/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      managed_by = "Terraform"
      project    = "test-project"
    }
  }
}