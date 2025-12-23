# Required variables
variable "location" {
  type        = string
  description = "The location where the resources will be deployed."
}

variable "name" {
  type        = string
  description = "The name of the this resource."
}

variable "os_type" {
  type        = string
  description = "The operating system type of the service plan. Possible values are `Windows`, `Linux` or `WindowsContainer`."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the resources will be deployed."
}

# Optional variables
variable "app_service_environment_id" {
  type        = string
  default     = null
  description = "Optional: The ID of the App Service Environment."
}

variable "enable_telemetry" {
  type        = bool
  default     = true
  description = "Enable or disable telemetry for this module."
}

variable "lock" {
  type = object({
    kind = string
    name = optional(string, null)
  })
  default     = null
  description = "Controls the Resource Lock configuration for this resource."
}

variable "maximum_elastic_worker_count" {
  type        = number
  default     = null
  description = "The maximum number of workers to allocate for this App Service Plan."
}

variable "per_site_scaling_enabled" {
  type        = bool
  default     = false
  description = "Enable per site scaling."
}

variable "premium_plan_auto_scale_enabled" {
  type        = bool
  default     = false
  description = "Enable auto scaling for Premium SKU."
}

variable "role_assignments" {
  type = map(object({
    role_definition_id_or_name             = string
    principal_id                           = string
    description                            = optional(string, null)
    skip_service_principal_aad_check       = optional(bool, false)
    condition                              = optional(string, null)
    condition_version                      = optional(string, null)
    delegated_managed_identity_resource_id = optional(string, null)
    principal_type                         = optional(string, null)
  }))
  default     = {}
  description = "A map of role assignments."
}

variable "sku_name" {
  type        = string
  default     = "P1v2"
  description = "The SKU name of the service plan."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to assign to the resource."
}

variable "worker_count" {
  type        = number
  default     = 3
  description = "Number of workers to allocate for the App Service Plan."
}

variable "zone_balancing_enabled" {
  type        = bool
  default     = true
  description = "Enable zone balancing."
}
