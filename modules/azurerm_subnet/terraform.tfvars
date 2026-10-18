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
