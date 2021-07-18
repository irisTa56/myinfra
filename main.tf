terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.33"
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  profile = "my_aws"
  region  = "ap-northeast-1"
}
