# Groups

# Demo Code
# Replace anything surrounded by * *
# resource "alkira_group" "*RESOURCE NAME*" {
#   name        = "*NAME*"
#   description = "*DESCRIPTION*"
# }

# Standard Groups

resource "alkira_group" "chrisnoon-ipsec" {
  name        = "chrisnoon-ipsec"
  description = "chrisnoon-ipsec"
}

resource "alkira_group" "chrisnoon-sdwan" {
  name        = "chrisnoon-sdwan"
  description = "chrisnoon-sdwan"
}

resource "alkira_group" "chrisnoon-dx" {
  name        = "chrisnoon-dx"
  description = "chrisnoon-dx"
}

resource "alkira_group" "chrisnoon-er" {
  name        = "chrisnoon-er"
  description = "chrisnoon-er"
}

resource "alkira_group" "chrisnoon-ic" {
  name        = "chrisnoon-ic"
  description = "chrisnoon-ic"
}

resource "alkira_group" "chrisnoon-azure" {
  name        = "chrisnoon-azure"
  description = "chrisnoon-azure"
}

resource "alkira_group" "chrisnoon-aws" {
  name        = "chrisnoon-aws"
  description = "chrisnoon-aws"
}

resource "alkira_group" "chrisnoon-gcp" {
  name        = "chrisnoon-gcp"
  description = "chrisnoon-gcp"
}

resource "alkira_group" "chrisnoon-www" {
  name        = "chrisnoon-www"
  description = "chrisnoon-www"
}

resource "alkira_group" "chrisnoon-mgmt" {
  name        = "chrisnoon-mgmt"
  description = "chrisnoon-mgmt"
}

# EaaS Groups

# resource "alkira_group" "Vendor1" {
#   name        = "Vendor1"
#   description = "Vendor1"
# }

# resource "alkira_group" "Vendor2" {
#   name        = "Vendor2"
#   description = "Vendor2"
# }

# resource "alkira_group" "Partner1" {
#   name        = "Partner1"
#   description = "Partner1"
# }

# resource "alkira_group" "Partner2" {
#   name        = "Partner2"
#   description = "Partner2"
# }