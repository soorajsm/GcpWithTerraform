terraform {
  backend "gcs" {
    bucket = "my-gcs-bucket-remote-backend"
    prefix = "terraform/state"
  }
}