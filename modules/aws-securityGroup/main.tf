




# # Security Group Moudule 
 
# module "securityGroup"{

#   source = "terraform-aws-modules/security-group/aws"
#   version = "4.5.0"
#   name = var.security_group
#   description = "Security group for bastion host"
#   vpc_id = var.vpc_id
#   ingress_rules=["ssh-tcp"]
#   ingress_cidr_blocks = ["0.0.0.0/0"]
#   egress_rules = ["all-all"]
# }



