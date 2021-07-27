variable "apic_username" {}
variable "apic_password" {}
variable "apic_url" {}

variable "tenant_name" {}
variable "vrf_name" {}
variable "application_profile_name" {}

variable "endpoint_groups" {
    type = map
    default = {
        web = {
            bridge_domain_name  = "web"
            epg_name = "web"
            vds_name = "DM_VMM"
            bridge_domain_ip_and_mask = "10.1.10.1/24"
            arp_flood = null
            unicast_route =  null
            unknown_unicast_route =  null
        },
        db = {
            bridge_domain_name  = "db"
            epg_name = "db"
            vds_name = "DM_VMM"
            bridge_domain_ip_and_mask = "10.1.20.1/24"
            arp_flood = "yes"
            unicast_route =  null 
            unknown_unicast_route =  null 
        },
    }
}
