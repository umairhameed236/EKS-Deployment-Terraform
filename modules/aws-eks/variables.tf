
variable "service_ipv4_cidr" {}

# variable "public_subnet_ids"{

# }

# variable "private_subnet_ids"{

# }
variable "subnet_private-us-east-1a" {
  
}

variable "subnet_public-us-east-1a" {
  
}
variable "subnet_private-us-east-1b" {
  
}
variable "subnet_public-us-east-1b" {
  
}


variable "cluster_endpoint_private_access"{}

variable "vpc_id" {
  
}
variable "cluster_endpoint_public_access"{}

variable "cluster_endpoint_public_access_cidrs"{}

variable "eks_oidc_root_ca_thumbprint"{}

variable "node_role_arn" {
  description = "ARN of the EKS node role"
  type        = string
}

variable "master_role_arn" {
  description = "ARN of the EKS master role"
  type        = string
}

variable "users" {
  description = "List of users with their roles and groups"
  type = list(object({
    user_arn = string
    username = string
    groups   = list(string)
  }))
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Version of the EKS cluster"
  type        = string
}

