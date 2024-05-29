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
  portal  = "chrisnoon.preprod.alkira3.net"
  api_key = "aYtDIxHf7kISSwF3gzs2finHRkwHJbL~RnIVJ6GMkg0sazA8btmJf91wi6LWEdN7"
}