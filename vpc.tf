module "vpc" {
  source="./modules/aws-vpc"
  cidr_block = local.vpc_cidr_block
  instance_tenancy = "default"
  private_subnet_ids_a = local.vpc_private_subnet_a_cidr_block
  public_subnet_ids_a = local.vpc_public_subnet_a_cidr_block 
   private_subnet_ids_b = local.vpc_private_subnet_b_cidr_block
  public_subnet_ids_b = local.vpc_public_subnet_b_cidr_block
  
}

# module "vpc" {
#   source = "terraform-aws-modules/vpc/aws"

#   name = "my-vpc"
#   cidr = "10.0.0.0/16"

#   azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#   enable_nat_gateway = false
#   enable_vpn_gateway = false

#   tags = {
#     Terraform = "true"
#     Environment = "dev"
#   }
# }