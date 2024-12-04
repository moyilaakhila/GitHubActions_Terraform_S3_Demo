resource "aws_s3_bucket" "bucket100" {
	bucket = "akhila-100-bucket"
}

resource "aws_s3_bucket" "bucket200" {
        bucket = "akhila-200-bucket"  # You need to specify a unique bucket name here 
}

provider "aws" {
    region = "us-east-1"
}
