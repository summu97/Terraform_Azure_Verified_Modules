# Required variables
name                = "cdn-profile-demo"
location            = "eastus"
resource_group_name = "rg-cdn-demo"

# Optional (overriding defaults only if needed)
sku = "Standard_AzureFrontDoor"

# Optional feature blocks – explicitly disabled / skipped
cdn_endpoints               = {}
cdn_endpoint_custom_domains = {}

diagnostic_settings         = {}
front_door_endpoints        = {}
front_door_custom_domains   = {}
front_door_firewall_policies = {}
front_door_origin_groups    = {}
front_door_origins          = {}
front_door_routes           = {}
front_door_rules            = {}
front_door_security_policies = {}
metric_alerts               = {}
role_assignments            = {}

# Sets / objects
front_door_rule_sets = []

managed_identities = {}

# Optional values
enable_telemetry = true
lock              = null
tags = {
  Environment = "Dev"
  Project     = "TerraformDemo"
}
