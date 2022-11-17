variable "vpc_cidr" {
    # default = "10.0.0.0/16"
    description = "enter the cidr block of vpc"
  
}


variable "sub1_cidr" {
    # default = "10.0.0.0/24"
  description = "enter the subnet1 cidr block "
}

variable "reg_name" {
#   default = "us-east-1"
  description = "enter the region name"
}

variable "ami_id" {
    # default = "ami-026b57f3c383c2eec"
    description = "enter the ami id "
  
}