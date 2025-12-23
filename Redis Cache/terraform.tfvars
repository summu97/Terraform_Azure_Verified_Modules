name                = "my-redis-cache"
resource_group_name = "my-resource-group"
location            = "East US"

capacity            = 2
sku_name            = "Premium"
enable_non_ssl_port  = false
public_network_access_enabled = true
redis_version       = 6
zones               = ["1", "2", "3"]

tags = {
  Environment = "Dev"
  Project     = "TerraformDemo"
}

enable_telemetry = true

redis_configuration = {
  maxmemory_reserved = 10
  maxmemory_delta    = 2
  maxmemory_policy   = "allkeys-lru"
}

diagnostic_settings = {}
managed_identities = {}
private_endpoints = {}
role_assignments = {}
