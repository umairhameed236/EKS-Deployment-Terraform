module "ecr" {
    source = "./modules/aws-ecr"
aws_ecr_repository_name="${local.cluster_name}-ecr"
  
}