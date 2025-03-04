terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "3.0.0-pre1"
    }
  }
}

provider "helm" {
  kubernetes = {
    config_path = "kubeconfig.yaml"
  }
}