variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 80, 443]
}

variable "open-internet" {
  description = "XXXX"
  default     = "0.0.0.0/0"
  }

variable "outbound-port" {
  description = "XXXX"
  default     = 0
  }

variable "name" {
  description = "Name of security group"
  default     = "Allow_SSH"
}

variable "egress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22]
}

variable "vpc_id" {
  description = "Name of vpc_id"
  default     = "Pull from main.tf"
}

variable "vpc_security_group_ids" {
  description = "ids of security vpc_security_group_ids"
  default     = "Pull from main.tf"
}
