  terraform {
  backend "gcs" {
    bucket  = "tf-state-bucket-amt-21feb26"
    prefix  = "gke-3apps"
  }
}