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
  api_key = "pvmJUyjPCQ9WDShaIpWRQDeO7tnG0ZZ~lKU7gqAFASGDfwPNZn3knl9KxXBSfFy0"
}