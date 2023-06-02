terraform {
  required_providers {
    google = {
      version = "~> 4.0.0"
    }
    google-beta = {
      version = "~> 4.0.0"
    }
  }
}

provider "google" {
  project     = "massu-prod"
  region      = "us-east1"
  zone        = "us-east1-b"
}

provider "google-beta" {
  project = "massu-dev"
  region  = "us-east1"
  zone    = "us-east1-b"
}
