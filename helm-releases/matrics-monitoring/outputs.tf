
output "releases_status" {
  description = "Status of all Helm releases"
  value = {
    for name, release in helm_release.releases : name => {
      status      = release.status
      version     = release.version
      namespace   = release.namespace
      chart       = release.chart
      repository  = release.repository
    }
  }
}
