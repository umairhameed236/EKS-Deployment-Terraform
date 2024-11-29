locals {
  instance_type                           = "t2.large"
  vpc_cidr_block                         = "10.0.0.0/16"
  #vpc_public_subnet_cidr_block           = ["10.0.1.0/24","10.0.3.0/24"]
  #vpc_private_subnet_cidr_block          = ["10.0.2.0/24","10.0.0.5.0/24"]
   vpc_public_subnet_a_cidr_block           ="10.0.101.0/24" 
  vpc_private_subnet_a_cidr_block          = "10.0.1.0/24"
   vpc_public_subnet_b_cidr_block           ="10.0.102.0/24"
  vpc_private_subnet_b_cidr_block          = "10.0.2.0/24"
  subnet_private-us-east-1a="10.0.0.0/19"
    subnet_private-us-east-1b="10.0.32.0/19"
      subnet_public-us-east-1a="10.0.64.0/19"
        subnet_public-us-east-1b="10.0.96.0/19"




  vpc_database_subnet                    = ["10.0.151.0/24", "10.0.152.0/24"]
  vpc_availability_zones                 = ["us-east-1a", "us-east-1b"]
  cluster_endpoint_private_access        = true
  cluster_endpoint_public_access         = true
  cluster_endpoint_public_access_cidrs  = ["0.0.0.0/0"]
  service_ipv4_cidr                      = null
  eks_oidc_root_ca_thumbprint            = "9e99a48a9960b14926bb7f3b02e22da2b0ab7280"
  node_role_arn                          = ""  # To be defined with actual ARN
  master_role_arn                        = ""  # To be defined with actual ARN
  users                                  = []  # Define user objects here
  cluster_name                           = "rk-poc"  # To be defined with the actual cluster name
  cluster_version                        = ""  # To be defined with the actual version
  node_group_name                        = ""  # To be defined with the actual node group name
  key_name                               = ""  # To be defined with the actual key pair name
  environment                            = ""  # To be defined
  vpc_name                               = ""  # To be defined
  bastion_name                           = ""  # To be defined with the actual bastion host name
}
