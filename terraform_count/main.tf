module "ec2_instance" {
  source = "./modules/ec2"

  instance_type  = "t3.micro"
  ami_id         = "ami-0f5ee92e2d63afc18"
  instance_count = 2
}