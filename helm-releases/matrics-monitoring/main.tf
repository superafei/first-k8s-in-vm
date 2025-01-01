resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "releases" {
  for_each         = var.helm_releases
  
  name             = each.key
  repository       = each.value.repository
  chart            = each.value.chart
  version          = each.value.chart_version
  namespace        = var.namespace
  create_namespace = false
  atomic           = true #default value is true， you can only set it to false to debug in dev env.
  wait             = true
  replace          = true
  timeout          = 300  # The default is 300 whicch is not enough for Prometheus in my case

  values           = [
    file("${path.module}/values/${each.key}-values.yaml")
  ]
}
