provider "google" {
  project = "niveustraining"
  region  = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "my-gcs-bucket-remote-backend"
  location      = "us-central1"
  force_destroy = true # Optional: allows deleting non-empty buckets

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      num_newer_versions = 2
    }
  }

  versioning {
    enabled = true
  }
}