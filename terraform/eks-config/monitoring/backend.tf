terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.10.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.5.1"
    }
  }
  backend "s3" {
  }
}