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
    - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_endpoint
EOT

  type = map(object({
    resource_group_name                              = string
    server_name                                      = string
    state                                            = string
    disabled_alerts                                  = optional(set(string))
    email_account_admins                             = optional(bool)
    email_addresses                                  = optional(set(string))
    retention_days                                   = optional(number)
    storage_account_access_key                       = optional(string)
    storage_account_access_key_key_vault_id          = optional(string)
    storage_account_access_key_key_vault_secret_name = optional(string)
    storage_endpoint                                 = optional(string)
  }))
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
  # path: disabled_alerts[*]
  #   condition: contains(["Sql_Injection", "Sql_Injection_Vulnerability", "Access_Anomaly", "Data_Exfiltration", "Unsafe_Action"], value)
  #   message:   must be one of: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action
  # path: retention_days
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: state
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: storage_account_access_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_endpoint
  #   condition: length(value) > 0
  #   message:   must not be empty
}

