data "azurerm_client_config" "current" {}

module "keyvault" {
  source = "../"

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id = data.azurerm_client_config.current.tenant_id
  sku_name = var.sku_name

    secret_maps = {
    "secret1" = "value1"
    "secret2" = "value2"
  }
}


