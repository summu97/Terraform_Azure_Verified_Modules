module "avm-res-web-serverfarm" {
  source  = "Azure/avm-res-web-serverfarm/azurerm"
  version = "1.0.0"

  # Required variables
  name                = var.name
  location            = var.location
  os_type             = var.os_type
  resource_group_name = var.resource_group_name

  # Optional variables
  sku_name                        = var.sku_name
  worker_count                     = var.worker_count
  zone_balancing_enabled           = var.zone_balancing_enabled
  enable_telemetry                 = var.enable_telemetry
  maximum_elastic_worker_count     = var.maximum_elastic_worker_count
  per_site_scaling_enabled         = var.per_site_scaling_enabled
  premium_plan_auto_scale_enabled  = var.premium_plan_auto_scale_enabled
  tags                             = var.tags
  role_assignments                 = var.role_assignments
  app_service_environment_id       = var.app_service_environment_id
  lock                             = var.lock
}
