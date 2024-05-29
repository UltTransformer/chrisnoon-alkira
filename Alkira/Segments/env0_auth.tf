# Providers

terraform {
  required_providers {
    alkira = {
      source = "alkiranet/alkira"
    }
  }
}

# Authentication

provider "alkira" {
  portal  = var.portal
  api_key = var.api-key
}