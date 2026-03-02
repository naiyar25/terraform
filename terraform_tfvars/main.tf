provider "aws" {
  region = "ap-south-1"
}

module "ec2_instances" {
  source = "./modules/ec2"

  instances = var.instances
}