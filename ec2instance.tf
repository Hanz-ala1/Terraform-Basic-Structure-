resource "aws_instance" "my_vm" {
  ami                    = data.aws_ami.amzlinux2.id //ubuntuAMI
  instance_type          = var.instance_type
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = aws_key_pair.instance_auth.key_name
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  
  tags = {
    Name = "EC2-Demo 2"

  }
}