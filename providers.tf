terraform {
  required_version = ">= 1.10.0, < 1.11.0"
  
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.11.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "my-cluster"
}

provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = "my-cluster"
  }
}
