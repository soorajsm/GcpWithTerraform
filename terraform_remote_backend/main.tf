

provider "google" {
  project = "niveustraining"
  region  = "asia-south1"
}

module "ec2_instances" {
  source              = "../creating_vm_default_vpc/modules/ec2_instances"
  instance_name_value = var.instance_name_value
  machine_type_value  = var.machine_type_value
  zone_value          = var.zone_value
  image_value         = var.image_value
  project_id          = var.project_id
  region              = var.region
}


