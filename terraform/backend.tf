terraform {
  backend "s3" {
    bucket = "buckettfstatebanbif"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

