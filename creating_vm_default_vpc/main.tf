provider "google" {
  project_id = "niveustraining"
  region     = "asia-south1"
}


module "ec2-instance" {
  source = "./modules/ec2_instances"

  instance_name_value = "m3gan-vm"
  machine_type_value  = "e2-micro"      # Free-tier eligible
  zone_value          = "asia-south1-a" # Valid GCP zone
  image_value         = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
  project_id          = "niveustraining"
  region              = "asia-south1"
}