# Required
variable "name" {
  description = "The name of the Redis Cache"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group for the Redis Cache"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
}

# Optional
variable "sku_name" {
  description = "Redis SKU to use (Basic, Standard, Premium)"
  type        = string
  default     = "Premium"
}

variable "capacity" {
  description = "Size of the Redis Cache"
  type        = number
  default     = 2
}

variable "enable_non_ssl_port" {
  description = "Enable the non-ssl port 6379"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Allow public network access"
  type        = bool
  default     = true
}

variable "redis_version" {
  description = "Redis major version (4 or 6)"
  type        = number
  default     = 6
}

variable "zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["1", "2", "3"]
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}

variable "enable_telemetry" {
  description = "Enable telemetry"
  type        = bool
  default     = true
}

variable "redis_configuration" {
  description = "Redis configuration block"
  type        = any
  default     = {}
}

variable "diagnostic_settings" {
  description = "Diagnostic settings for the resource"
  type        = any
  default     = {}
}

variable "managed_identities" {
  description = "Managed identity configuration"
  type        = any
  default     = {}
}

variable "private_endpoints" {
  description = "Private endpoints configuration"
  type        = any
  default     = {}
}

variable "role_assignments" {
  description = "Role assignments for this resource"
  type        = any
  default     = {}
}
