output "web_serverfarm_id" {
  description = "The ID of the App Service Plan created."
  value       = module.avm-res-web-serverfarm.id
}

output "web_serverfarm_name" {
  description = "The name of the App Service Plan."
  value       = module.avm-res-web-serverfarm.name
}

output "web_serverfarm_location" {
  description = "The location of the App Service Plan."
  value       = module.avm-res-web-serverfarm.location
}
