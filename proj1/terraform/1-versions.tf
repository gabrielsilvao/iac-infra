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
  access_key = "AKIAQG6U46USVP54GUQI"
  secret_key = "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"
}
