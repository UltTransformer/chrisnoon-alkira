# Provider

provider "aws" {
  region = "eu-west-2"
}

# Create VPC
resource "aws_vpc" "chrisnoon-vpc" {
  cidr_block = "10.12.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "chrisnoon-vpc"
  }
}

# Create subnet 1
resource "aws_subnet" "chrisnoon-subnet1" {
  vpc_id                  = aws_vpc.chrisnoon-vpc.id
  cidr_block              = "10.12.1.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "chrisnoon-subnet1"
  }
}

# Create subnet 2
resource "aws_subnet" "chrisnoon-subnet2" {
  vpc_id                  = aws_vpc.chrisnoon-vpc.id
  cidr_block              = "10.12.2.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "chrisnoon-subnet2"
  }
}