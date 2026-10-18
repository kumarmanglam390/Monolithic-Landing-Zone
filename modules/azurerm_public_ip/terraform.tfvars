public_ips = {
  pip1 = {
    public_ip_name      = "pip_frontend_vm"
    resource_group_name = "rg-kumar"
    location            = "centralindia"
    allocation_method   = "Static"

  }
  pip2 = {
    public_ip_name      = "pip_backend_vm"
    resource_group_name = "rg-kumar"
    location            = "centralindia"
    allocation_method   = "Static"

  }
}