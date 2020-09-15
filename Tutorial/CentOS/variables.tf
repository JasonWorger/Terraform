variable "ubuntu-ami" {
  description = "ami image for EC2"
  default     = "ami-0bfa4fefe067b7946"
}

variable "instance-type" {
  description = "instance-type for EC2"
  default     = "t2.micro"
}

variable "pem-key" {
  description = "pem-key for EC2"
  default     = "aws_key"
}

variable "subnet_id" {
  description = "subnet_id for EC2"
  default     = "XXXX"
}

variable "vpc_security_group_ids" {
  description = "tags for EC2"
  default     = "pull from main.tf"
}

variable "associate_public_ip_address" {
  description = "subnet_id for EC2"
  default     = true
}

variable "tags" {
  description = "Tags to be applied to the EC2 Instances"
  default = {
    Name = "EC2 Name"
  }
}