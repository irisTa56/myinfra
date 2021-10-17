terraform {
  required_version = "~> 1.0"

  backend "remote" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "profile_for_aws_provider" {
  type = string
}

variable "region_for_aws_provider" {
  type = string
}

provider "aws" {
  profile = var.profile_for_aws_provider
  region  = var.region_for_aws_provider
}
