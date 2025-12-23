# Output the Redis Cache resource ID
output "resource_id" {
  description = "ID of the Redis Cache"
  value       = module.avm-res-cache-redis.resource_id
}

# Output the Redis Cache name
output "resource_name" {
  description = "Name of the Redis Cache"
  value       = module.avm-res-cache-redis.name
}

# Output the map of private endpoints
output "private_endpoints" {
  description = "Private endpoints created"
  value       = module.avm-res-cache-redis.private_endpoints
}

# Optional: Output the full Redis Cache resource (sensitive)
output "redis_resource" {
  description = "Full Redis Cache resource object"
  value       = module.avm-res-cache-redis.resource
  sensitive   = true
}

# Optional: System-assigned managed identity principal ID
output "system_assigned_mi_principal_id" {
  description = "System assigned managed identity principal ID"
  value       = module.avm-res-cache-redis.system_assigned_mi_principal_id
}
