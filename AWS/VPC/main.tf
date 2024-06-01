# Provider

provider "aws" {
  region = "eu-west-2"
  alias = "eu-west-2"
}

provider "aws" {
  region = "ap-southeast"
  alias = "ap-southeast"
}

# Create Chris Noon's VPC
resource "aws_vpc" "chrisnoon-vpc" {
  provider = aws.eu-west-2
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

#####

# Create Phil Oultram's VPC
resource "aws_vpc" "philoultram-vpc" {
  provider = aws.eu-west-2
  cidr_block = "10.22.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "philoultram-vpc"
  }
}

# Create subnet 1
resource "aws_subnet" "philoultram-subnet1" {
  vpc_id                  = aws_vpc.philoultram-vpc.id
  cidr_block              = "10.22.1.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "philoultram-subnet1"
  }
}

# Create subnet 2
resource "aws_subnet" "philoultram-subnet2" {
  vpc_id                  = aws_vpc.philoultram-vpc.id
  cidr_block              = "10.22.2.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "philoultram-subnet2"
  }
}

#####

# Create Ian Plummer's VPC
resource "aws_vpc" "ianplummer-vpc" {
  provider = aws.eu-west-2
  cidr_block = "10.32.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "ianplummer-vpc"
  }
}

# Create subnet 1
resource "aws_subnet" "ianplummer-subnet1" {
  vpc_id                  = aws_vpc.ianplummer-vpc.id
  cidr_block              = "10.32.1.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "ianplummer-subnet1"
  }
}

# Create subnet 2
resource "aws_subnet" "ianplummer-subnet2" {
  vpc_id                  = aws_vpc.ianplummer-vpc.id
  cidr_block              = "10.32.2.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "ianplummer-subnet2"
  }
}

########################################################
# Cusotmer Lab

# # Student 1
# resource "aws_vpc" "sydney-vpc" {
#   provider = aws.ap-southeast
#   cidr_block = "10.100.1.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "sydney-vpc"
#   }
# }
# resource "aws_subnet" "sydney-subnet1" {
#   vpc_id                  = aws_vpc.sydney-vpc.id
#   cidr_block              = "10.100.1.0/25"
#   availability_zone       = "ap-southeast-2"
#   tags = {
#     Name = "sydney-subnet1"
#   }
# }
# resource "aws_subnet" "sydney-subnet2" {
#   vpc_id                  = aws_vpc.sydney-vpc.id
#   cidr_block              = "10.100.1.128/25"
#   availability_zone       = "ap-southeast-2"
#   tags = {
#     Name = "sydney-subnet2"
#   }
# }

