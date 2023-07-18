provider "aws" {
  region = "ap-south-1" # Replace with your desired region
}

resource "aws_s3_bucket" "vprofile" {
  bucket = "vinn143" # Replace with your desired bucket name

  tags = {
    Name        = "profile" # Replace with a friendly name for your bucket
    Environment = "stage"   # Replace with the desired environment
  }
}

