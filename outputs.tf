#Terraform output Values

#EC2 Instance public IP
output "instance_publicip"{
  description = "EC2 Instance Public IP"
  value = aws_instance.my_vm.public_ip
}
#EC2 Instance Public DNS
output "instance_publicdns"{
  description = "EC2 Instance Public DNS"
  value = aws_instance.my_vm.public_dns
}