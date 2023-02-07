resource "aws_instance" "my_vm" {
  ami           = "ami-0aa7d40eeae50c9a9" //ubuntuAMI
  instance_type = "t2.micro"

  tags = {
    Name = "MyTerraform Instance"

  }
}