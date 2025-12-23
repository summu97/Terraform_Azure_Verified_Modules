module "avm-res-cache-redis" {
  source  = "Azure/avm-res-cache-redis/azurerm"
  version = "0.4.0"

  # Required variables
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  # Optional variables
  sku_name                    = var.sku_name
  capacity                     = var.capacity
  enable_non_ssl_port          = var.enable_non_ssl_port
  public_network_access_enabled = var.public_network_access_enabled
  redis_version                = var.redis_version
  zones                        = var.zones
  tags                         = var.tags
  enable_telemetry             = var.enable_telemetry
  redis_configuration          = var.redis_configuration
  diagnostic_settings          = var.diagnostic_settings
  managed_identities           = var.managed_identities
  private_endpoints            = var.private_endpoints
  role_assignments             = var.role_assignments
}
