resource "google_project_service" "kubernetes_engine_api" {
  service = "container.googleapis.com"

  disable_dependent_services = true

  project = "massu-prod"
}

resource "google_project_service" "artifact_registry_api" {
  project = "massu-prod"
  service = "artifactregistry.googleapis.com"
}