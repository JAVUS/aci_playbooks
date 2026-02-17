provider "aci" {
  username = "admin"
  password = var.apic_password
  url      = "https://38.25.68.158:7443"
  insecure = true # Normalmente necesario si usas certificados auto-firmados
}
