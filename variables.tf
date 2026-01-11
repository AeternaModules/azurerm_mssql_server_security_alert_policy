variable "mssql_server_security_alert_policys" {
  description = <<EOT
Map of mssql_server_security_alert_policys, attributes below
Required:
    - resource_group_name
    - server_name
    - state
Optional:
    - disabled_alerts
    - email_account_admins
    - email_addresses
    - retention_days
    - storage_account_access_key
    - storage_endpoint
EOT

  type = map(object({
    resource_group_name        = string
    server_name                = string
    state                      = string
    disabled_alerts            = optional(set(string))
    email_account_admins       = optional(bool, false)
    email_addresses            = optional(set(string))
    retention_days             = optional(number, 0)
    storage_account_access_key = optional(string)
    storage_endpoint           = optional(string)
  }))
}

