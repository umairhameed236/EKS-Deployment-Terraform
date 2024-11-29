# module "bastion_host" {
#   source         = "./modules/aws-ec2"
#   instance_type  = local.instance_type
#   key_name       = local.key_name
#   public_subnet = local.vpc_public_subnet_cidr_block
#  vpc_id = module.vpc.vpc_id
# security_group = "${local.cluster_name}-sg"
# }