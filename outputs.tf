output "mssql_server_security_alert_policies" {
  description = "All mssql_server_security_alert_policy resources"
  value       = azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies
  sensitive   = true
}
output "mssql_server_security_alert_policies_disabled_alerts" {
  description = "List of disabled_alerts values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.disabled_alerts]
}
output "mssql_server_security_alert_policies_email_account_admins" {
  description = "List of email_account_admins values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.email_account_admins]
}
output "mssql_server_security_alert_policies_email_addresses" {
  description = "List of email_addresses values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.email_addresses]
}
output "mssql_server_security_alert_policies_resource_group_name" {
  description = "List of resource_group_name values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.resource_group_name]
}
output "mssql_server_security_alert_policies_retention_days" {
  description = "List of retention_days values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.retention_days]
}
output "mssql_server_security_alert_policies_server_name" {
  description = "List of server_name values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.server_name]
}
output "mssql_server_security_alert_policies_state" {
  description = "List of state values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.state]
}
output "mssql_server_security_alert_policies_storage_account_access_key" {
  description = "List of storage_account_access_key values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.storage_account_access_key]
  sensitive   = true
}
output "mssql_server_security_alert_policies_storage_endpoint" {
  description = "List of storage_endpoint values across all mssql_server_security_alert_policies"
  value       = [for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : v.storage_endpoint]
}

