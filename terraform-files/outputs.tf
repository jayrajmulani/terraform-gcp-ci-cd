output "instance_name" {
  value = google_compute_instance.coffee_compute_resource.name
}

output "instance_ip" {
  description = "This is the internal IP of the newly created instance"
  value       = google_compute_instance.coffee_compute_resource.network_interface[0].network_ip
}

output "external_ip" {
  description = "This is the external IP of the newly created instance"
  value       = google_compute_instance.coffee_compute_resource.network_interface[0].access_config[0].nat_ip
}
