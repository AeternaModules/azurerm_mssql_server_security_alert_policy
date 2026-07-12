output "mssql_server_security_alert_policies_id" {
  description = "Map of id values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.id }
}
output "mssql_server_security_alert_policies_disabled_alerts" {
  description = "Map of disabled_alerts values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.disabled_alerts }
}
output "mssql_server_security_alert_policies_email_account_admins" {
  description = "Map of email_account_admins values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.email_account_admins }
}
output "mssql_server_security_alert_policies_email_addresses" {
  description = "Map of email_addresses values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.email_addresses }
}
output "mssql_server_security_alert_policies_resource_group_name" {
  description = "Map of resource_group_name values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.resource_group_name }
}
output "mssql_server_security_alert_policies_retention_days" {
  description = "Map of retention_days values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.retention_days }
}
output "mssql_server_security_alert_policies_server_name" {
  description = "Map of server_name values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.server_name }
}
output "mssql_server_security_alert_policies_state" {
  description = "Map of state values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.state }
}
output "mssql_server_security_alert_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.storage_account_access_key }
  sensitive   = true
}
output "mssql_server_security_alert_policies_storage_endpoint" {
  description = "Map of storage_endpoint values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.storage_endpoint }
}

