output "cdn_profile_id" {
  value       = module.cdn_profile.resource_id
  description = "The resource ID of the CDN / Front Door profile."
}

output "cdn_profile_name" {
  value       = module.cdn_profile.name
  description = "The name of the CDN / Front Door profile."
}
