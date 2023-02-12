#input variables
# aws region

variable "aws_region" {
  description = "Region in which aws resources will be deployed"
  type        = string
  default     = "us-east-1"
}

#aws ec2 instance type
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

#aws EC2 Instance Key Pair
#variable "instance_keypair" {
  #description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  #type = string
  #default = "terraform-key"
#}
