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
    address_space       = ["10.0.0.0/16"]
  }

}
