# Root module outputs for App Service Plan

output "web_serverfarm_id" {
  description = "The ID of the App Service Plan created."
  value       = module.avm-res-web-serverfarm.resource_id
}

output "web_serverfarm_name" {
  description = "The name of the App Service Plan."
  value       = module.avm-res-web-serverfarm.name
}

# Full resource object if needed
output "web_serverfarm_resource" {
  description = "The full resource object of the App Service Plan."
  value       = module.avm-res-web-serverfarm.resource
}
