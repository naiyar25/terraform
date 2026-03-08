resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "module-ec2-instance"
  }
  lifecycle {
  create_before_destroy = true
}
}