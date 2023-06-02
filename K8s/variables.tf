variable "project_id" {
  description = "The GCP project ID."
  default = "massu-prod"
}

variable "region" {
  description = "The region where the GKE cluster will be created."
  default = "us-east1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  default = "k8s-heider-prod"
}

variable "node_pool_name" {
  description = "The name of the node pool within the GKE cluster."
  default = "node-k8s-heider"
}

variable "node_count" {
  description = "The number of nodes in the GKE cluster's node pool."
  default     = 1
}

variable "apigee_org_name" {
  description = "The name of the Apigee organization."
  default = "apiheider"
}

variable "apigee_env_name" {
  description = "The name of the Apigee environment."
  default = "prodtest"
}

variable "apigee_proxy_name" {
  description = "The name of the Apigee API Proxy."
  default = "proxyheidertest"
}

variable "apigee_proxy_bundle_file" {
  description = "The path to the Apigee API Proxy bundle file."
  default = "."
}
