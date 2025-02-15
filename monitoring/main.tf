# Monitoring Stack (Prometheus & Grafana)
resource "helm_release" "monitoring" {
  name             = "monitoring"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  namespace        = "monitoring"
  create_namespace = true
  version          = "69.2.4"
  atomic           = "true"
  timeout          = "500"
  values           = [file("values.yml")]
}