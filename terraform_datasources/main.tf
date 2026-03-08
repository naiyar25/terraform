provider "aws" {
  region = "ap-south-1"
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

module "ec2_instance" {
  source = "./modules/ec2"

  instance_type = "t3.small"

  ami_id = data.aws_ami.amazon_linux.id
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}