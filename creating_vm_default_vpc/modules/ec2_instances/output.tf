output "instance_public_ip" {
  description = "public ip of the instance created in default vpc"
  value       = google_compute_instance.vm1.network_interface[0].access_config[0].nat_ip
}