resource "helm_release" "mysql" {
  name             = "mysql"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "mysql"
  namespace        = "default"
  create_namespace = true
  atomic           = true    
  timeout          = 500     
  version          = "10.0.0"
}

