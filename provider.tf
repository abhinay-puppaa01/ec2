provider "aws" {
  region     = substr(var.availability_zone,0,(length(var.availability_zone)-1))
  access_key = var.access_key
  secret_key = var.secret_key
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
} 
