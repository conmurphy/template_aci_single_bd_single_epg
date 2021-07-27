module "aci_single_bd_single_epg" {
    source  = "github.com/conmurphy/tf_module_aci_single_bd_single_epg"

    for_each = var.endpoint_groups
    
    tenant_name = var.tenant_name
    vrf_name = var.vrf_name

    application_profile_name = var.application_profile_name

    epg_name = each.value.epg_name

    bridge_domain_name = each.value.bridge_domain_name
    bridge_domain_ip_and_mask = each.value.bridge_domain_ip_and_mask

    arp_flood = each.value.arp_flood
    unicast_route = each.value.unicast_route
    unknown_unicast_route = each.value.unknown_unicast_route

    vds_name =  each.value.vds_name
}