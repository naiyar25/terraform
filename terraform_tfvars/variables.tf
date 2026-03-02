variable "instances" {
  description = "EC2 instances configuration"
  type = map(object({
    ami           = string
    instance_type = string
  }))
}