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
  }
}



provider "kubernetes" {
  config_path    = "~/.kube/config"
  # The context name of the Kubernetes cluster to use from the kubeconfig file
  config_context = "kubernetes-admin@kubernetes"
}

provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = "kubernetes-admin@kubernetes"
  }
}
