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
  portal  = ""
  api_key = ""
}