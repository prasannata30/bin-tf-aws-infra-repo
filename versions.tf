terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.19.0"
    }
        time = {
      source = "hashicorp/time"
      version = "0.9.1"
    }

  }
  backend "s3" {
    bucket = "bin-tf-state-bucket-sagarparit"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "BIN-TF-LOCK-TABLE"
  }
}

provider "aws" {
}