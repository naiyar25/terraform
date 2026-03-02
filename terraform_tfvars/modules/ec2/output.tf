output "instance_ids" {
  value = {
    for key, instance in aws_instance.this :
    key => instance.id
  }
}

output "public_ips" {
  value = {
    for key, instance in aws_instance.this :
    key => instance.public_ip
  }
}