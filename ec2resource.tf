# Configure the AWS Provider

provider "aws" {
  region  = "us-east-1"
  access_key = "access_key"
  secret_key = "secret_key"
  token = "token"

resource "aws_instance" "ec2" {
  ami           = "ami-0f9fc25dd2506cf6d"
  instance_type = "t2.micro"
  count = 3
}

resource "aws_s3_bucket" "mys3" {
  bucket = "my-test-bucket159357"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


