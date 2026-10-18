vms = {
  vm1 = {
    nic_name        = "frontend-vm-nic"
    nic_location    = "centralindia"
    location    = "centralindia"
    nic_rg_name     = "rg-kumar"
    rg_name     = "rg-kumar"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "virtual1-network"
    nic_pip_name    = "pip_frontend_vm"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_B2s"
    admin_username  = "KumarDevOps"
    admin_password  = "Kumar@123"
  }

  vm2 = {
    nic_name        = "backend-vm-nic"
    location    = "centralindia"
    nic_location    = "centralindia"
    nic_rg_name     = "rg-kumar"
    rg_name     = "rg-kumar"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "virtual1-network"
    nic_pip_name    = "pip_backend_vm"
    vm_name         = "backend-vm"
    vm_size         = "Standard_B2s"
    admin_username  = "KumarDevOps"
    admin_password  = "Kumar@123"
  }
}
