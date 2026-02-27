variable "aws_region" {
  type    = string
  default = "ap-southeast-2"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "allowed_ssh_cidr" {
  description = "Your IP address in CIDR format (e.g. 1.2.3.4/32)"
  type        = string
}