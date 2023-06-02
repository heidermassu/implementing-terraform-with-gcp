resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = var.node_count

  depends_on = [
    google_project_service.kubernetes_engine_api
  ]
}

resource "google_container_node_pool" "node_pool" {
  name       = var.node_pool_name
  location   = var.region
  cluster    = google_container_cluster.cluster.name
  node_count = var.node_count

  node_config {
    machine_type = "e2-medium"
  }
}

#resource "apigee_organization" "org" {
#  name = var.apigee_org_name
#}
#
#resource "apigee_environment" "env" {
#  name            = var.apigee_env_name
#  organization_id = apigee_organization.org.name
#}
#
#resource "apigee_api_proxy" "proxy" {
#  name              = var.apigee_proxy_name
#  bundle_zip_base64 = base64encode(file(var.apigee_proxy_bundle_file))
#  organization_id   = apigee_organization.org.name
#  environment_id    = apigee_environment.env.name
#}
