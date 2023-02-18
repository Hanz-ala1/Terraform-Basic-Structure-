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
#AWS EC2 Instance Type -List
variable "instance_type_list" {
  description = "ec2 list"
  type        = list(string)
  default     = ["t2.micro", "t1.micro"]
}
# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instance Type"
  type        = map(string)
  default = {
    "dev" = "t2.micro"
    "qa"  = "t1.micro"
  }
}