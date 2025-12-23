variable "location" {
  type        = string
  description = "The Azure location where the CDN / Front Door profile and related resources will be deployed."
  nullable    = false
}

variable "name" {
  type        = string
  description = "The name of the CDN or Azure Front Door profile."
  nullable    = false
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which the CDN / Front Door profile will be created."
  nullable    = false
}

variable "sku" {
  type        = string
  default     = "Standard_AzureFrontDoor"
  description = "The SKU name for the CDN or Azure Front Door profile."

  validation {
    condition = contains(
      ["Standard_AzureFrontDoor", "Premium_AzureFrontDoor", "Standard_ChinaCdn", "Standard_Microsoft"],
      var.sku
    )
    error_message = "Invalid SKU value."
  }
}

variable "cdn_endpoints" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of CDN endpoints to be created within the CDN profile. Leave empty to skip CDN endpoint creation."
}

variable "cdn_endpoint_custom_domains" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of custom domains to associate with CDN endpoints, including DNS and HTTPS configuration."
}

variable "diagnostic_settings" {
  type        = map(any)
  default     = {}
  description = "Diagnostic settings configuration for the CDN / Front Door profile, such as Log Analytics or storage destinations."
}

variable "enable_telemetry" {
  type        = bool
  default     = true
  nullable    = false
  description = "Specifies whether telemetry data should be sent to Microsoft to help improve Azure Verified Modules."
}

variable "front_door_endpoints" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of Azure Front Door endpoints to be created. Leave empty to skip endpoint creation."
}

variable "front_door_custom_domains" {
  type        = map(any)
  default     = {}
  description = "Map of custom domains to associate with Azure Front Door endpoints."
}

variable "front_door_firewall_policies" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of Web Application Firewall (WAF) policies to associate with Azure Front Door."
}

variable "front_door_origin_groups" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of origin groups that define health probes and load-balancing settings for Front Door origins."
}

variable "front_door_origins" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of backend origins (such as App Services, VMs, or Load Balancers) for Azure Front Door."
}

variable "front_door_routes" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of routing rules that define how traffic is forwarded from Front Door endpoints to origins."
}

variable "front_door_rule_sets" {
  type        = set(string)
  default     = []
  description = "Set of Front Door rule set names to be associated with routes."
}

variable "front_door_rules" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of Front Door rules that define request and response modification logic."
}

variable "front_door_secrets" {
  type = map(object({
    name                     = string
    key_vault_certificate_id = string
  }))
  default     = {}
  nullable    = false
  description = "Map of secrets referencing Key Vault certificates for securing Front Door custom domains."
}

variable "front_door_security_policies" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of security policies that associate WAF policies with Front Door endpoints or domains."
}

variable "lock" {
  type = object({
    kind = string
    name = optional(string, null)
  })
  default     = null
  description = "Optional management lock configuration to protect the CDN / Front Door profile from deletion or modification."
}

variable "managed_identities" {
  type = object({
    system_assigned            = optional(bool, false)
    user_assigned_resource_ids = optional(set(string), [])
  })
  default     = {}
  nullable    = false
  description = "Managed identity configuration for the CDN / Front Door profile, including system-assigned and user-assigned identities."
}

variable "metric_alerts" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of Azure Monitor metric alerts to be created for the CDN / Front Door profile."
}

variable "role_assignments" {
  type        = map(any)
  default     = {}
  nullable    = false
  description = "Map of Azure RBAC role assignments to apply to the CDN / Front Door profile."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "Map of tags to assign to the CDN / Front Door profile resource."
}
