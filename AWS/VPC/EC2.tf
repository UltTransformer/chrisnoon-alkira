resource "aws_instance" "chrisnoon-ec2-1" {
  ami           = "ami-0e58172bedd62916b" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.chrisnoon-subnet1.subnet_id 
  tags = {
    Name = "chrisnoon-ec2-1"  # Set your desired instance name tag
  }
}
