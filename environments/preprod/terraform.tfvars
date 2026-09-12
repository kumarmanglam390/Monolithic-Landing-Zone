rgs = {
  rg1 = {
    name     = "rg-kumar"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg-practice"
    location = "westus"

  }
  rg3 = {
    name     = "rg-github"
    location = "westus"

  }
}

storage_accounts = {
  sa1 = {
    name                     = "mumbaigharwalastore"
    location                 = "centralindia"
    rg_name                  = "rg-kumar"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    container_name           = "mumbai"
    container_access_type    = "private"
    key                      = "sa1_state"
  }
  sa2 = {
    name                     = "patnawalastorejaha"
    location                 = "westus"
    rg_name                  = "rg-practice"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    container_name           = "patna"
    container_access_type    = "private"
    key                      = "sa2_state"

  }
}




vnet_names = {

  vnet1 = {
    name                = "virtual1-network"
    location            = "centralindia"
    resource_group_name = "rg-kumar"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    name                = "virtual2-network"
    location            = "westus"
    resource_group_name = "rg-practice"
    address_space       = ["10.1.0.0/16"]
  }

}

subnets = {
  subnet1 = {

    name             = "frontend-subnet"
    rg-name          = "rg-kumar"
    vnet-name        = "virtual1-network"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {

    name             = "backend-subnet"
    rg-name          = "rg-kumar"
    vnet-name        = "virtual1-network"
    address_prefixes = ["10.0.2.0/24"]
  }
}

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
vms = {
  vm1 = {
    nic_name        = "frontend-vm-nic"
    nic_location    = "centralindia"
    location        = "centralindia"
    nic_rg_name     = "rg-kumar"
    rg_name         = "rg-kumar"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "virtual1-network"
    nic_pip_name    = "pip_frontend_vm"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_B2s"
    admin_username  = "KumarDevOps"
    admin_password  = "Kumar@123"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
  }

  vm2 = {
    nic_name        = "backend-vm-nic"
    location        = "centralindia"
    nic_location    = "centralindia"
    nic_rg_name     = "rg-kumar"
    rg_name         = "rg-kumar"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "virtual1-network"
    nic_pip_name    = "pip_backend_vm"
    vm_name         = "backend-vm"
    vm_size         = "Standard_B2s"
    admin_username  = "KumarDevOps"
    admin_password  = "Kumar@123"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"

  }
}

