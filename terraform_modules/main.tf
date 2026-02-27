provider "aws" {
  region = "ap-south-1"
}
module "ec2_instance" {
  source = "./modules/ec2"

  instance_type = "t3.micro"

  # Use latest Amazon Linux 2 for ap-south-1
  ami_id = "ami-0f5ee92e2d63afc18"
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}