variable "mssql_server_security_alert_policies" {
  description = <<EOT
Map of mssql_server_security_alert_policies, attributes below
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
    email_account_admins       = optional(bool) # Default: false
    email_addresses            = optional(set(string))
    retention_days             = optional(number) # Default: 0
    storage_account_access_key = optional(string)
    storage_endpoint           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_security_alert_policies : (
        v.disabled_alerts == null || (contains(["Sql_Injection", "Sql_Injection_Vulnerability", "Access_Anomaly", "Data_Exfiltration", "Unsafe_Action"], v.disabled_alerts))
      )
    ])
    error_message = "must be one of: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_security_alert_policies : (
        v.retention_days == null || (v.retention_days >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_security_alert_policies : (
        v.storage_account_access_key == null || (length(v.storage_account_access_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.mssql_server_security_alert_policies : (
        v.storage_endpoint == null || (length(v.storage_endpoint) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_mssql_server_security_alert_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: server_name
  #   source:    validate.ValidateMsSqlServerName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: state
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

