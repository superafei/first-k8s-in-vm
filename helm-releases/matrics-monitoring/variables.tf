variable "helm_releases" {
  description = "Map of Helm releases to deploy"
  type        = map(object({
    repository    = string
    chart         = string
    chart_version = string
    values_file   = string
    namespace     = string
    atomic        = bool
    create_namespace = bool
    wait          = bool
    replace       = bool
    timeout       = number
    install_crds  = optional(bool)
  }))

  default = {
    prometheus = {
      repository      = "https://prometheus-community.github.io/helm-charts"
      chart         = "prometheus"
      chart_version = "26.0.1"
      values_file   = "prometheus-values.yaml"
      namespace     = "monitoring"
      create_namespace = true
      atomic        = false
      wait          = true
      replace       = true
      timeout       = 300
    }
    grafana = {
      repository    = "https://grafana.github.io/helm-charts"
      chart         = "grafana"
      chart_version = "8.8.2"
      values_file   = "grafana-values.yaml"
      namespace     = "monitoring"
      create_namespace = true
      atomic        = false
      wait          = true
      replace       = true
      timeout       = 300
    }
    nginx-ingress = {
      repository    = "https://kubernetes.github.io/ingress-nginx"
      chart         = "ingress-nginx"
      chart_version = "4.0.6"
      values_file   = "nginx-ingress-values.yaml"
      namespace     = "ingress-nginx"
      create_namespace = true
      atomic        = false
      wait          = true
      replace       = true
      timeout       = 300
    }
    cert-manager = {
      repository    = "https://charts.jetstack.io"
      chart         = "cert-manager"
      chart_version = "v1.5.3"
      values_file   = "cert-manager-values.yaml"
      namespace     = "cert-manager"
      create_namespace = true
      atomic        = false
      wait          = true
      replace       = true
      timeout       = 600
      install_crds  = true
    }
  }
}
