resource "azurerm_mssql_server_security_alert_policy" "mssql_server_security_alert_policies" {
  for_each = var.mssql_server_security_alert_policies

  resource_group_name        = each.value.resource_group_name
  server_name                = each.value.server_name
  state                      = each.value.state
  disabled_alerts            = each.value.disabled_alerts
  email_account_admins       = each.value.email_account_admins
  email_addresses            = each.value.email_addresses
  retention_days             = each.value.retention_days
  storage_account_access_key = each.value.storage_account_access_key
  storage_endpoint           = each.value.storage_endpoint
}

