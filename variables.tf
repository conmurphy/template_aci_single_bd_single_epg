
variable "apps" {
  type = map
  default = {
    app1 = {
      bridge_domain_name  = "app1"
      epg_name = "app1"
      vds_name = "DM_VMM"
      bridge_domain_ip_and_mask = "10.1.10.1/24"
      arp_flood = null
      unicast_route =  null
      unknown_unicast_route =  null
    },
    app2 = {
      bridge_domain_name  = "app1"
      epg_name = "app1"
      vds_name = "DM_VMM"
      bridge_domain_ip_and_mask = "10.1.20.1/24"
      arp_flood = "yes"
      unicast_route =  null 
      unknown_unicast_route =  null 
    },
  }
}
