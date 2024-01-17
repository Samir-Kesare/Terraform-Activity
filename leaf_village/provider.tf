terraform {
  required_version = ">= 0.13"
}
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAVTIMEKK4KH6MEA35"
  secret_key = "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"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0, < 6.0"
    }
  }
}
