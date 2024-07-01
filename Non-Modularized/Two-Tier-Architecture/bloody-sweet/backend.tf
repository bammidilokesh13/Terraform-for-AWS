terraform {
  backend "s3" {
    bucket         = "my-ews-baket108"
    region         = "us-east-1"
    key            = "Non-Modularized/Two-Tier-Architecture/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=5.56.0"
  required_providers {
    aws = {
      version = ">=5.56.0"
      source  = "hashicorp/aws"
    }
  }
}
