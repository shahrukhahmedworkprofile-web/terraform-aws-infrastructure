module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
}

module "subnets" {
  source = "./modules/subnets"

  project_name          = var.project_name
  vpc_id                = module.vpc.vpc_id
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  availability_zone     = var.availability_zone
}

module "route_tables" {
  source = "./modules/route_tables"

  project_name       = var.project_name
  vpc_id             = module.vpc.vpc_id
  internet_gateway_id = module.vpc.internet_gateway_id

  public_subnet_id  = module.subnets.public_subnet_id
  private_subnet_id = module.subnets.private_subnet_id
}

module "security_groups" {
  source = "./modules/security_groups"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  my_ip        = var.my_ip
}

module "key_pair" {
  source = "./modules/key_pair"

  key_name         = var.key_name
  private_key_path = var.private_key_path
}

module "ec2" {
  source = "./modules/ec2"

  project_name = var.project_name
  instance_type = var.instance_type

  key_name = module.key_pair.key_name

  public_subnet_id  = module.subnets.public_subnet_id
  private_subnet_id = module.subnets.private_subnet_id

  public_security_group_id  = module.security_groups.public_security_group_id
  private_security_group_id = module.security_groups.private_security_group_id
}