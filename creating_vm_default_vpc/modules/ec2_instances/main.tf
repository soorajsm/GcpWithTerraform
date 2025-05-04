resource "google_compute_instance" "vm1" {
  name         = var.instance_name_value
  machine_type = var.machine_type_value
  zone         = var.zone_value

  boot_disk {
    initialize_params {
      image = var.image_value
    }
  }

  network_interface {
    network    = "default"
    subnetwork = "default"
    access_config {}
  }
}