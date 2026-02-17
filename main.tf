terraform {
  cloud {
    organization = "aci_local"
    workspaces {
      name = "terraform_cloud" 
    }
  }
}
