// ec2 in the Public Subnet 01 (FAQ 5/5)

resource "aws_instance" "web_server1" {
  ami                         = "ami-026b57f3c383c2eec"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "8aws-7am"
  vpc_security_group_ids      = [aws_security_group.my_sg.id]
  subnet_id                   = aws_subnet.sub1.id
  user_data                   = file("./scripts/apache.sh")

  tags = {
    Name     = "WebServer-1"
    Location = "Bangalore"
  }
}


// creting the security group to ec2 instance

resource "aws_security_group" "my_sg" {
  name        = "my_sg"
  description = "my_sg"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "my_sg_terraform-8am"
  }
}