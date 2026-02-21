
terraform {
  backend "gcs" {
    bucket  = "tf-state-bucket-amt-21feb26-12"
    prefix  = "gke-3apps"
  }