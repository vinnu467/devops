resource "aws_instance" "terraform_instance" {
  ami           = "ami-0d540f8b62c295e19"  
  instance_type = "t2.micro"              
  subnet_id     = aws_subnet.public_subnets[0].id
  key_name      = "vinnu"             
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.public_sg.id]

  tags = {
    Name = "terraform-instance"
  }
}











