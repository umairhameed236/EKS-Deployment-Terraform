module "eks" {
  source                               = "./modules/aws-eks"
subnet_private-us-east-1a=local.subnet_private-us-east-1a
    subnet_private-us-east-1b=local.subnet_private-us-east-1b
      subnet_public-us-east-1a=local.subnet_public-us-east-1a
        subnet_public-us-east-1b=local.subnet_public-us-east-1b
  cluster_name                         = local.cluster_name
  cluster_version                      = local.cluster_version
 # key_name                             = local.key_name
  cluster_endpoint_private_access      = local.cluster_endpoint_private_access
  cluster_endpoint_public_access       = local.cluster_endpoint_public_access
  cluster_endpoint_public_access_cidrs = local.cluster_endpoint_public_access_cidrs
  service_ipv4_cidr                    = local.service_ipv4_cidr
  eks_oidc_root_ca_thumbprint          = local.eks_oidc_root_ca_thumbprint
  node_role_arn                        = local.node_role_arn
  master_role_arn                      = local.master_role_arn
  users                                = local.users
vpc_id = module.vpc.vpc_id
  

}


# module "eks" {
#   source = "terraform-aws-modules/eks/aws"
#   version = "~> 17.0"

#   cluster_name = local.cluster_name
#   subnets      = module.vpc.public_subnets

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }

#   vpc_id = module.vpc.vpc_id

#   # To add more nodes to the cluster, update the desired capacity.
#   node_groups = {
#     default = {
#       instance_type = "t2.small"
#       additional_tags = {
#         Terraform = "true"
#         Environment = "dev"
#       }
#       desired_capacity = 2
#     }
#   }
# }

# resource "null_resource" "update_kubeconfig" {
#   provisioner "local-exec" {
#     command = "aws eks update-kubeconfig --region ${var.region} --name ${local.cluster_name} --role-arn ${var.assume_role_arn} --alias ${var.cluster_alias}"
#   }
#   depends_on = [
#     module.eks,
#     module.bastion_host,
#     module.vpc

#   ]
# }