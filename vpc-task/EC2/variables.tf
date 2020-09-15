variable "region" {
  default = "eu-west-1"
}

variable "instance" {
  description = "This variable state the instance type for your EC2"
  default     = "t2.micro"
}

variable "ami_id" {
  default = "ami-04137ed1a354f54c4"
}

variable "key_name" {
  default = "aws_key"
}

variable "enable_public_ip" {
  description = "Enable if EC2 instace should have public ip address"
  default     = true
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