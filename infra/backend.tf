
terraform {
  backend "gcs" {
    bucket  = "tf-state-bucket-amt-21feb26"
    region  = var.region
    prefix  = "gke-3apps"
  }