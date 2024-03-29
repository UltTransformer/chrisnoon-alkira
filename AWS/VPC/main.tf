# Provider

provider "aws" {
  region = "eu-west-2"
}

# Create Chris Noon's VPC
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

#####

# Create Phil Oultram's VPC
resource "aws_vpc" "philoultram-vpc" {
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
  cidr_block = "10.12.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "ianplummer-vpc"
  }
}

# Create subnet 1
resource "aws_subnet" "ianplummer-subnet1" {
  vpc_id                  = aws_vpc.ianplummer-vpc.id
  cidr_block              = "10.12.1.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "ianplummer-subnet1"
  }
}

# Create subnet 2
resource "aws_subnet" "ianplummer-subnet2" {
  vpc_id                  = aws_vpc.ianplummer-vpc.id
  cidr_block              = "10.12.2.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "ianplummer-subnet2"
  }
}