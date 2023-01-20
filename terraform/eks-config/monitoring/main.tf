resource "helm_release" "kube_state_metrics" {
  chart            = var.helm_chart_name
  create_namespace = var.helm_create_namespace
  namespace        = var.k8s_namespace
  name             = var.helm_release_name
  version          = var.helm_chart_version
  repository       = var.helm_repo_url
  

  values = [
    "${file("values.yaml")}"
  ]

  set {
    name  = "replicaCount"
    value = 3
  }

}