provider "aws" {
  profile = "terraform"
  region = "us-east-2"
}

resource "aws_vpc" "main_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main_vps"
  }
}

resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
  
    tags = {
    Name = "Main1"
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main_vpc.id
    cidr_block = "10.0.2.0/24"
  
  tags = {
    Name = "Main2"
  }
}