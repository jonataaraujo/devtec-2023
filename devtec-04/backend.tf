terraform {
  backend "s3" {
    bucket  = "jonata-terraform-remote-bucket"
    encrypt = true
    key     = "tf/terraform.tfstate"
    region  = "us-east-1"
  }
}