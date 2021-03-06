provider "aws" {
  version                 = "~> 2.0"
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
}

module "aws_vpc" {
  source = "./VPC"
}

module "aws_webserver_sg" {
  source        = "./SecurityGroup"
  name          = "WebServerSG"
  vpc_id        = module.aws_vpc.vpc_id
}

module "webserver_node" {
  source                 = "./EC2"
  subnet_id              = module.aws_vpc.subnet_a_id
  vpc_security_group_ids = module.aws_webserver_sg.web_sg_id
  tags = {
    Name = "WebServer_Node"
  }
  associate_public_ip_address = true
}