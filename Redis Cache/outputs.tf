output "resource_id" {
  description = "ID of the Redis Cache"
  value       = module.avm-res-cache-redis.resource_id
}

output "resource_name" {
  description = "Name of the Redis Cache"
  value       = module.avm-res-cache-redis.resource_name
}

output "private_endpoints" {
  description = "Private endpoints created"
  value       = module.avm-res-cache-redis.private_endpoints
}
