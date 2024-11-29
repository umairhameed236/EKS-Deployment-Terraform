terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.78.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.34.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
 
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "eks-cluster"

}
