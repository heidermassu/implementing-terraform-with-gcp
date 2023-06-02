terraform {
  required_providers {
    google = {
      version = "~> 4.67.0"
    }
  }
}

provider "google" {
  project     = "massu-prod"
  region      = "us-east1"
  zone        = "us-east1-b"
}
