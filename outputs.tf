
output "name" {
  description = "The name of the asset repository instance"
  value       = local.instance_name
  depends_on  = [null_resource.setup_instance_gitops]
}

output "branch" {
  description = "The branch where the module config has been placed"
  value       = local.application_branch
  depends_on  = [null_resource.setup_instance_gitops]
}

output "namespace" {
  description = "The namespace where the module will be deployed"
  value       = local.namespace
  depends_on  = [null_resource.setup_instance_gitops]
}

output "server_name" {
  description = "The server where the module will be deployed"
  value       = var.server_name
  depends_on  = [null_resource.setup_instance_gitops]
}

output "layer" {
  description = "The layer where the module is deployed"
  value       = local.layer
  depends_on  = [null_resource.setup_instance_gitops]
}

output "type" {
  description = "The type of module where the module is deployed"
  value       = local.type
  depends_on  = [null_resource.setup_instance_gitops]
}
