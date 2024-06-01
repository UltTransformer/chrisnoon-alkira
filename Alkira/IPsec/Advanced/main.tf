# IP Reservation

resource "alkira_ip_reservation" "branch1" {
  name        = "branch1"
  type        = "OVERLAY"
  prefix      = "169.254.1.0/30"
  prefix_type = "APIPA"
  # >review> scale_group_id      = "99a6f3db-02d5-4189-8b0a-352eaeda2e10"
  # >review>  segment_id          = alkira_segment.test.id
  cxp = "EU-CENTRAL-2"
}