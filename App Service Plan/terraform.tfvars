# Required variables
location            = "East US"
name                = "my-appserviceplan"
os_type             = "Linux"
resource_group_name = "my-resource-group"

# Optional variables
sku_name                        = "P1v2"
worker_count                     = 3
zone_balancing_enabled           = true
enable_telemetry                 = true
maximum_elastic_worker_count     = 10
per_site_scaling_enabled         = false
premium_plan_auto_scale_enabled  = true
tags = {
  Environment = "Dev"
  Project     = "TerraformDemo"
}
