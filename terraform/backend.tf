terraform {
  backend "s3" {
    bucket = "buckettfsate2024"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

