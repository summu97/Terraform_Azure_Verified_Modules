# CDN endpoint custom domains
output "cdn_endpoint_custom_domains" {
  value       = module.cdn_profile.cdn_endpoint_custom_domains
  description = "CDN endpoint custom domains output object."
}

# CDN endpoints
output "cdn_endpoints" {
  value       = module.cdn_profile.cdn_endpoints
  description = "CDN endpoint output object."
}

# Front Door custom domains
output "frontdoor_custom_domains" {
  value       = module.cdn_profile.frontdoor_custom_domains
  description = "Azure Front Door custom domains output object."
}

# Front Door endpoints
output "frontdoor_endpoints" {
  value       = module.cdn_profile.frontdoor_endpoints
  description = "Azure Front Door endpoint output object."
}

# Front Door firewall/WAF policies
output "frontdoor_firewall_policies" {
  value       = module.cdn_profile.frontdoor_firewall_policies
  description = "Azure Front Door firewall policies output object."
}

# Front Door origin groups
output "frontdoor_origin_groups" {
  value       = module.cdn_profile.frontdoor_origin_groups
  description = "Azure Front Door origin groups output object."
}

# Front Door origins
output "frontdoor_origins" {
  value       = module.cdn_profile.frontdoor_origins
  description = "Azure Front Door origins output object."
}

# Front Door rule sets
output "frontdoor_rule_sets" {
  value       = module.cdn_profile.frontdoor_rule_sets
  description = "Azure Front Door rule sets output object."
}

# Front Door rules
output "frontdoor_rules" {
  value       = module.cdn_profile.frontdoor_rules
  description = "Azure Front Door rules output object."
}

# Front Door security policies
output "frontdoor_security_policies" {
  value       = module.cdn_profile.frontdoor_security_policies
  description = "Azure Front Door security policies output object."
}

# Full resource object
output "resource" {
  value       = module.cdn_profile.resource
  description = "Full resource output object."
  sensitive   = true
}

# Resource ID
output "resource_id" {
  value       = module.cdn_profile.resource_id
  description = "The resource ID of the Front Door profile."
}

# Resource Name
output "resource_name" {
  value       = module.cdn_profile.resource_name
  description = "The resource name of the Front Door profile."
}

# System assigned managed identity principal ID
output "system_assigned_mi_principal_id" {
  value       = module.cdn_profile.system_assigned_mi_principal_id
  description = "The system assigned managed identity of the Front Door profile."
}
