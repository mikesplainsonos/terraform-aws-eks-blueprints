output "argocd_gitops_config" {
  description = "Configuration used for managing the add-on with ArgoCD"
  value       = var.manage_via_gitops ? local.argocd_gitops_config : null
}

output "release_metadata" {
  description = "Map of attributes of the Helm release metadata"
  value       = try(module.helm_addon.release_metadata, null)
}

output "irsa_arn" {
  description = "IAM role ARN for the service account"
  value       = try(module.helm_addon.irsa_arn, null)
}

output "irsa_name" {
  description = "IAM role name for the service account"
  value       = try(module.helm_addon.irsa_name, null)
}

output "service_account" {
  description = "Name of Kubernetes service account"
  value       = try(module.helm_addon.service_account, null)
}
