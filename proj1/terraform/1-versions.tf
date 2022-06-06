terraform {
#  required_version = "~> 0.14"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.59.0"
    }
  }
#  backend "s3" {
#    bucket = "senaisenai132132"
#    key    = "terraform.tfstate"
#    region = "us-east-1"
#  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "id-key"
  secret_key = "secret-key"
}
