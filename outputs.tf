output "mssql_server_security_alert_policies_id" {
  description = "Map of id values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_server_security_alert_policies_disabled_alerts" {
  description = "Map of disabled_alerts values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.disabled_alerts if v.disabled_alerts != null && length(v.disabled_alerts) > 0 }
}
output "mssql_server_security_alert_policies_email_account_admins" {
  description = "Map of email_account_admins values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.email_account_admins if v.email_account_admins != null }
}
output "mssql_server_security_alert_policies_email_addresses" {
  description = "Map of email_addresses values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.email_addresses if v.email_addresses != null && length(v.email_addresses) > 0 }
}
output "mssql_server_security_alert_policies_resource_group_name" {
  description = "Map of resource_group_name values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "mssql_server_security_alert_policies_retention_days" {
  description = "Map of retention_days values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.retention_days if v.retention_days != null }
}
output "mssql_server_security_alert_policies_server_name" {
  description = "Map of server_name values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.server_name if v.server_name != null && length(v.server_name) > 0 }
}
output "mssql_server_security_alert_policies_state" {
  description = "Map of state values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.state if v.state != null && length(v.state) > 0 }
}
output "mssql_server_security_alert_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.storage_account_access_key if v.storage_account_access_key != null && length(v.storage_account_access_key) > 0 }
  sensitive   = true
}
output "mssql_server_security_alert_policies_storage_endpoint" {
  description = "Map of storage_endpoint values across all mssql_server_security_alert_policies, keyed the same as var.mssql_server_security_alert_policies"
  value       = { for k, v in azurerm_mssql_server_security_alert_policy.mssql_server_security_alert_policies : k => v.storage_endpoint if v.storage_endpoint != null && length(v.storage_endpoint) > 0 }
}

