# This will search for the ubuntu ami image on AWS.
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

# This will set the EC2 instance according to the parameters below.
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    name = "afro-01"
  }
}

# For the second instance
data "aws_ami" "ubuntu_west" {
  provider = aws.west
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

# Resources for the second instance.
resource "aws_instance" "web_west" {
  provider = aws.west
  ami           = data.aws_ami.ubuntu_west.id
  instance_type = "t2.micro"

  tags = {
    name = "afro-02"
  }
}
