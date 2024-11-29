# variable "assume_role_arn" {
#   description = "ARN of the role to assume"
#   type        = string
# }

# variable "kubeconfig_path" {
#   description = "Path to the kubeconfig file"
#   type        = string
# }

# variable "region" {
#   description = "AWS region"
#   type        = string
# }

# variable "cluster_alias" {
#   description = "Alias of the EKS cluster"
#   type        = string
# }

variable "vpc_public_subnet_cidr_block" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_subnet_cidr_block" {

  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]

}