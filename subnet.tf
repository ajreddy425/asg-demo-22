resource "aws_subnet" "sub1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.sub1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public-Subnet-1"
  }
}

resource "aws_subnet" "sub2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public-Subnet-2"
  }
}

resource "aws_subnet" "sub3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "Public-Subnet-3"
  }
}
resource "aws_subnet" "sub4" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1d"

  tags = {
    Name = "Public-Subnet-4"
  }
}
resource "aws_subnet" "sub5" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1f"

  tags = {
    Name = "Public-Subnet-5"
  }
}
