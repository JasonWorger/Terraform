variable "inbound_port" {
  description = "List of ingress ports"
  default     = 22
}

variable "outbound_port" {
  description = "Port open to allow outbound connection"
  default     = 0
}

variable "open_internet" {
  default = "0.0.0.0/0"
}

variable "name" {
  description = "Name of security group"
  default     = "Allow_SSH"
}

variable "vpc_id" {
  description = "Name of vpc_id"
  default     = "Pull from main.tf"
}

variable "vpc_security_group_ids" {
  description = "ids of security vpc_security_group_ids"
  default     = "Pull from main.tf"
}