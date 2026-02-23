variable "instance_type"{
    description = " EC2 instance type"
    type = string
    default = "t3.micro"
  
}
variable "aws_region"{
    description = "AWS region to deploy resources"
    type = string
    default = "ap-south-1"  
}