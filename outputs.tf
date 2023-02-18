#Terraform output Values

#EC2 Instance public IP
#output "instance_publicip" {
 # description = "EC2 Instance Public IP"
  #value       = aws_instance.my_vm.public_ip
#}
#EC2 Instance Public DNS
#output "instance_publicdns" {
  #description = "EC2 Instance Public DNS"
  #value       = aws_instance.my_vm.public_dns
#}


# output - for loop with list
output "for_output_list" {
  description = "For Loop with List"
  value       = [for instance in aws_instance.my_vm : instance.public_dns]
}

#output for loop with map
output "for_output_map1" {
  description = "For loop with map"
  value       = { for instance in aws_instance.my_vm : instance.id => instance.public_dns }

}
#output for loop with map advanced
output "for_output_map2" {
  description = "For loop with map2"
  value       = {for c, instance in aws_instance.my_vm: c => instance.public_dns}

}

#Output generalized Splat Operator - Returns the list
output "latest_splat_instance_publicdns" {
  description = "Generalised latest splat operator"
  value       = aws_instance.my_vm[*].public_dns
}
