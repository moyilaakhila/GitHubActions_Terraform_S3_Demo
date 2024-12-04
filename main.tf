resource "aws_s3_bucket" "bucket1" {
	bucket = "akhila-100-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "akhila-100-bucket"
    key            = "neeha/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "akhila-0412-dblocks"
    encrypt        = true
  }
}
