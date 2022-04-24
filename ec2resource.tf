# Configure the AWS Provider

provider "aws" {
  region  = "us-east-1"
  access_key = "ASIAS5XLDUILVC4DAUCH"
  secret_key = "LGFMDXvr3O0DsCoo6GMK6Zvha+zca8zaP+rKquoX"
  token = "FwoGZXIvYXdzENH//////////wEaDJmRUu5ELaoVsK6YziKxAVcAdzw5mKT+8GJF/t35MMOnqopITnXjCaKwAFmOGXY6dfHCw59vUcYjLLvCPE/xiHAmG4e1qEuZxIC4wZW3oGHChtUcH8mnfMezbSR3DFJ2Abuw6KwXV+0nkHBv9DQ7AknzvL7Fhsy94U4a5GbAeU6X+bpeRSx2Bls8x1I4U+e4eUOc3C6NgMoLlOjz/SSOXfhVqP4eQrDOF0HTuVgPl/Nbiy5MkNQXymXHTtrgpak0zCj335WTBjItstUeurwWC/E20Xm17K8VUl/c5IDo2ipuWlSCorHfteQjpE5Sel9W1pl0qrM2"
}

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


