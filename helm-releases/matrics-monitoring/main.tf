resource "helm_release" "releases" {
  for_each         = var.helm_releases
  
  name             = each.key
  repository       = each.value.repository
  chart            = each.value.chart
  version          = each.value.chart_version
  namespace        = each.value.namespace
  atomic           = each.value.atomic
  create_namespace = each.value.create_namespace
  wait             = each.value.wait
  replace          = each.value.replace
  timeout          = each.value.timeout

  values           = [
    file("${path.module}/values/${each.value.values_file}")
  ]
}
