# Using backend config in CLI will override this block
terraform {
  backend "gcs" {
    bucket = "tfstategcpupskilling"
    prefix = "statetest"
  }
}
