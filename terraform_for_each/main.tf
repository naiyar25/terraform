provider "aws" {
  region = "ap-south-1"
}

module "ec2_instances" {
  source = "./modules/ec2"

  instances = {
    dev = {
      ami           = "ami-0f5ee92e2d63afc18"
      instance_type = "t3.micro"
    }

    prod = {
      ami           = "ami-0f5ee92e2d63afc18"
      instance_type = "t3.micro"
    }
  }
}