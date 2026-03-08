provider "aws" {
  region = "ap-south-1"
}
module "ec2_instance" {
  source = "./modules/ec2"

  instance_type = "t3.small"

  # Use latest Amazon Linux 2 for ap-south-1
  ami_id = "ami-019715e0d74f695be"
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}