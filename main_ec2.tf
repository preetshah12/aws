provider "aws" {
  region = "ap-southeast-1"
}

locals {
  name   = "example-ec2-complete"
  region = "eu-west-1"


  tags = {
    Owner       = "user"
    Environment = "dev"
  }
}
resource "aws_instance" "myweb" {
  ami           = "ami-0e763a959ec839f5e"
  instance_type = "t2.micro"

  tags = local.tags
}

output "test" {
  value = aws_instance.myweb.id
}
