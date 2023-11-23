terraform {

  required_providers {
    tfe = {
      version = "~> 0.50.0"
    }
  }
}

provider "tfe" {
  token   = var.TERRAFORM_CLOUD_TOKEN
}