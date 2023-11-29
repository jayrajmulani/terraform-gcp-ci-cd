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
  name           = "coffee-server-${terraform.workspace}"
  machine_type   = var.machine_type
  zone           = var.zone
  desired_status = var.instance_desired_status
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "mresham:${file(var.public_key)}"
  }

  tags = ["coffee-project"]
}

resource "google_compute_firewall" "coffee_firewall" {
  name        = "allow-http-https-${terraform.workspace}"
  target_tags = ["coffee-project"]
  network     = "default"
  allow {
    protocol = "tcp"
    ports    = ["80", "443", "22"]
  }
  source_ranges = ["0.0.0.0/0"]
}


# Health Check services
resource "google_compute_instance" "load_balancer_resource" {
  name           = "load-balancer-${terraform.workspace}"
  machine_type   = var.machine_type
  zone           = var.zone
  desired_status = var.instance_desired_status
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "mresham:${file(var.public_key)}"
  }

  tags = ["coffee-project"]
}

resource "google_compute_instance" "monitoring_resource" {
  name           = "monitoring-${terraform.workspace}"
  machine_type   = var.machine_type
  zone           = var.zone
  desired_status = var.instance_desired_status
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "mresham:${file(var.public_key)}"
  }

  tags = ["coffee-project"]
}