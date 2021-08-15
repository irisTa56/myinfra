terraform {
  required_version = "~> 1.0"

  backend "remote" {
    organization = "irisTa56"
    hostname     = "app.terraform.io"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "my-aws"
  region  = "ap-northeast-1"
}
