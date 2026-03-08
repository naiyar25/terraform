output "public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.this.public_ip
}

output "instance_id" {
  description = "Instance ID"
  value       = aws_instance.this.id
}