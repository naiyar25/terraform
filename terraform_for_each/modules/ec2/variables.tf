variable "instances" {
  description = "Map of EC2 instances"
  type = map(object({
    ami           = string
    instance_type = string
  }))
}