provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "chrisnoon-ec2-1" {
  ami           = "ami-0e58172bedd62916b" 
  instance_type = "t2.micro"

  tags = {
    Name = "chrisnoon-ec2-1"  # Set your desired instance name tag
  }
}