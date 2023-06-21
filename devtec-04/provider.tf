terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.1"
    }
  }
}

provider "aws" {
  region     = var.region
  default_tags {
    tags = {
      Equipe   = "Cloud"
      Ambiente = "Desenvolvimento"
    }
  }
}