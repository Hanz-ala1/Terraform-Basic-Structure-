resource "aws_instance" "my_vm" {
  ami           = data.aws_ami.amzlinux2.id //ubuntuAMI
  instance_type = var.instance_type_list[1] #for list
  #instance_type          = var.instance_type_map["qa"] #for map
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = aws_key_pair.instance_auth.key_name
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count                  = 2
  tags = {
    Name = "Count-Demo-${count.index}"
  }
}
