# Segments

# Demo Code
# Replace anything surrounded by * *
# resource "alkira_segment" "*RESOURCE NAME*" {
#   name  = "*NAME*"
#   asn   = "*ASN*"
#   cidrs = ["*IP ADDRESS/24*"]
# }

# Standard Segments

resource "alkira_segment" "Production" {
  name  = "Production"
  asn   = "65501"
  cidrs = ["10.50.1.0/24"]
}

resource "alkira_segment" "Pre-Production" {
  name  = "Pre-Production"
  asn   = "65502"
  cidrs = ["10.50.2.0/24"]
}

resource "alkira_segment" "EaaS" {
  name  = "EaaS"
  asn   = "65503"
  cidrs = ["10.50.3.0/24"]
}

resource "alkira_segment" "Management" {
  name  = "Management"
  asn   = "65504"
  cidrs = ["10.50.4.0/24"]
}

resource "alkira_segment" "WWW" {
  name  = "WWW"
  asn   = "65505"
  cidrs = ["10.92.5.0/24"]
}

# EaaS Segments

# resource "alkira_segment" "Vendor1" {
#   name  = "Vendor1"
#   asn   = "65601"
#   cidrs = ["10.60.1.0/24"]
# }

# resource "alkira_segment" "Vendor2" {
#   name  = "Vendor2"
#   asn   = "65602"
#   cidrs = ["10.60.2.0/24"]
# }

# resource "alkira_segment" "Partner1" {
#   name  = "Partner1"
#   asn   = "65603"
#   cidrs = ["10.60.3.0/24"]
# }

# resource "alkira_segment" "Partner2" {
#   name  = "Partner2"
#   asn   = "65604"
#   cidrs = ["10.60.4.0/24"]
# }
