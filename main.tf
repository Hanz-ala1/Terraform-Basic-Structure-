resource "aws_instance" "my_vm" {
  ami           = "ami-0aa7d40eeae50c9a9" //ubuntuAMI
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app1-install.sh")
  tags = {
    Name = "EC2-Demo"

  }
}