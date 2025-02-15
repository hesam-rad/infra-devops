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
    config_path = pathexpand(var.kubeconfig_path)

  }
}

variable "kubeconfig_path" {
  default = ""
}
