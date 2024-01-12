terraform {
  backend "s3" {
    bucket  = "terraform-remote-bucket"
    encrypt = true
    key     = "tf/managed-grafana/dashboard/terraform.tfstate"
    region  = "eu-west-1"
  }
}