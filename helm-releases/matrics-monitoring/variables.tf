variable "namespace" {
  description = "Namespace for monitoring stack"
  type        = string
  default     = "monitoring"
}

variable "helm_releases" {
  description = "Map of Helm releases to deploy"
  type        = map(object({
    repository    = string
    chart         = string
    chart_version = optional(string)
  }))

  default = {
    prometheus = {
      repository    = "https://prometheus-community.github.io/helm-charts"
      chart         = "prometheus"
    }
    grafana = {
      repository    = "https://grafana.github.io/helm-charts"
      chart         = "grafana"
    }
  }
}
