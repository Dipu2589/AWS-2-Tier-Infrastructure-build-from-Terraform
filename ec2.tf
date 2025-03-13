# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami                         = "ami-0d0f28110d16ee7d6"
  instance_type               = "t2.micro"
  count                       = 2
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "My Public Instance.${count.index}"
  }
}

# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami                         = "ami-0d0f28110d16ee7d6"
  instance_type               = "t2.micro"
  count                       = 2
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public-subnet-2.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "My Public Instance 2.${count.index}"
  }
}