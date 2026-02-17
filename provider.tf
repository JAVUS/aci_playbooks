terraform {
  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      version = ">= 2.10.0" # Es buena práctica fijar una versión
    }
  }

  cloud {
    organization = "cisco_aci"
    workspaces {
      name = "terraform_cloud"
    }
  }
}

provider "aci" {
  username = "admin"
  password = var.apic_password
  url      = "https://38.25.68.158:7443"
  insecure = true
}
