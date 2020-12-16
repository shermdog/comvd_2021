terraform {
  required_version = "~>0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  alias  = "paris"
  region = "eu-west-3"
}

provider "aws" {
  alias  = "sidney"
  region = "ap-southeast-2"
}
