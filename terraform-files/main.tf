terraform {
  backend "gcs" {
    bucket = "coffee-tf-state-files"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "coffee_compute_resource" {
  name         = "coffee-server"
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }

  tags = ["coffee-project"]
}

resource "google_compute_firewall" "coffee_firewall" {
  name        = "allow-http-https"
  target_tags = ["coffee-project"]
  network     = "default"
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
}
