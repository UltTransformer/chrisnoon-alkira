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
  portal  = var.env0_var_portal
  api_key = var.env0_var_api_key
}