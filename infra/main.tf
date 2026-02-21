infra/main.tf
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "gke" {
  name     = "cluster-amit"
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary" {
  name       = "primary-nodepool"
  cluster    = google_container_cluster.gke.name
  location   = google_container_cluster.gke.location
  node_count = 3

  node_config {
    machine_type = "e2-standard-4"
    disk_size_gb = 100
  }