terraform {
  backend "s3" {
    bucket = "545053092614-terraform-state"
    key    = "${var.username}"
    region = "us-east-1"
  }

  required_providers {
    fivetran = {
      source  = "fivetran/fivetran"
      version = "1.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
