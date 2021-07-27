terraform {
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
      version = ">= 0.7.1"
    }
  }
  required_version = ">= 1.0.1"
}

provider "aci" {
    username              = var.apic_username
    password              = var.apic_password
    url                   = var.apic_url
    insecure              = true
}