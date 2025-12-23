module "cdn_profile" {
  source  = "Azure/avm-res-cdn-profile/azurerm"
  version = "0.1.9"

  # Required
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  # Optional – pass-through
  cdn_endpoints                  = var.cdn_endpoints
  cdn_endpoint_custom_domains    = var.cdn_endpoint_custom_domains
  diagnostic_settings            = var.diagnostic_settings
  enable_telemetry               = var.enable_telemetry
  front_door_endpoints           = var.front_door_endpoints
  front_door_custom_domains      = var.front_door_custom_domains
  front_door_firewall_policies   = var.front_door_firewall_policies
  front_door_origin_groups       = var.front_door_origin_groups
  front_door_origins             = var.front_door_origins
  front_door_routes              = var.front_door_routes
  front_door_rule_sets           = var.front_door_rule_sets
  front_door_rules               = var.front_door_rules
  front_door_secrets             = var.front_door_secrets
  front_door_security_policies   = var.front_door_security_policies
  lock                            = var.lock
  managed_identities             = var.managed_identities
  metric_alerts                  = var.metric_alerts
  role_assignments               = var.role_assignments
  tags                            = var.tags
}
