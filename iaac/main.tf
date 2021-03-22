#
# Configuration
#

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}


#
# Provider
#

provider "aws" {
  region  = var.region
}