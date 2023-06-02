resource "google_artifact_registry_repository" "my-repo" {
  location = var.region
  repository_id = "gcp-registry-upskilling"
  description   = "example docker repository"
  format        = "DOCKER"

  depends_on = [
    google_project_service.artifact_registry_api
  ]
}