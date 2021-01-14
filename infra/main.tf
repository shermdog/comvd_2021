terraform {
  required_version = "~>0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    organization = "dan_personal"

    workspaces {
      name = "comvd_2021"
    }
  }
}

provider "aws" {
  alias  = "paris"
  region = "eu-west-3"
}

provider "aws" {
  alias  = "sydney"
  region = "ap-southeast-2"
}

locals {
  creator_tag = {
    Creator = var.creator,
    "terraform.managed" = "True"
  }
}
