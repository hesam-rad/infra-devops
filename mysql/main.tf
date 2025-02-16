# MySQL 
resource "helm_release" "mysql" {
  name             = "mysql"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "mysql"
  namespace        = "database"
  create_namespace = true
  version          = "10.0.0"
  atomic           = "true"    
  timeout          = 500     
  values           = [file("values.yml")]
}

