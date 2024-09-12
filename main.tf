data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    #values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
    values = ["Windows_Server-2022*Base*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  #owners = ["979382823631"] # Bitnami
  owners = ["amazon"] 
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
