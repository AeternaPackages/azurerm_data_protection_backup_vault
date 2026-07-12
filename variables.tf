variable "data_protection_backup_vaults" {
  description = <<EOT
Map of data_protection_backup_vaults, attributes below
Required:
    - datastore_type
    - location
    - name
    - redundancy
    - resource_group_name
Optional:
    - cross_region_restore_enabled
    - immutability
    - retention_duration_in_days
    - soft_delete
    - tags
    - identity (block)
Nested data_protection_backup_instance_data_lake_storages (azurerm_data_protection_backup_instance_data_lake_storage):
    Required:
        - backup_policy_data_lake_storage_id
        - location
        - name
        - storage_account_id
        - storage_container_names
Nested data_protection_backup_policy_data_lake_storages (azurerm_data_protection_backup_policy_data_lake_storage):
    Required:
        - backup_schedule
        - default_retention_duration
        - name
    Optional:
        - time_zone
        - retention_rule (block)
Nested data_protection_backup_vault_customer_managed_keys (azurerm_data_protection_backup_vault_customer_managed_key):
    Required:
        - key_vault_key_id
EOT

  type = map(object({
    datastore_type               = string
    location                     = string
    name                         = string
    redundancy                   = string
    resource_group_name          = string
    cross_region_restore_enabled = optional(bool)
    immutability                 = optional(string) # Default: "Disabled"
    retention_duration_in_days   = optional(number) # Default: 14
    soft_delete                  = optional(string) # Default: "On"
    tags                         = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    data_protection_backup_instance_data_lake_storages = optional(map(object({
      backup_policy_data_lake_storage_id = string
      location                           = string
      name                               = string
      storage_account_id                 = string
      storage_container_names            = set(string)
    })))
    data_protection_backup_policy_data_lake_storages = optional(map(object({
      backup_schedule            = list(string)
      default_retention_duration = string
      name                       = string
      time_zone                  = optional(string)
      retention_rule = optional(list(object({
        absolute_criteria      = optional(string)
        days_of_week           = optional(set(string))
        duration               = string
        months_of_year         = optional(set(string))
        name                   = string
        scheduled_backup_times = optional(set(string))
        weeks_of_month         = optional(set(string))
      })))
    })))
    data_protection_backup_vault_customer_managed_keys = optional(map(object({
      key_vault_key_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.data_protection_backup_vaults) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.data_protection_backup_vaults : [for kk in keys(coalesce(v0.data_protection_backup_instance_data_lake_storages, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.data_protection_backup_vaults : [for kk in keys(coalesce(v0.data_protection_backup_policy_data_lake_storages, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.data_protection_backup_vaults : [for kk in keys(coalesce(v0.data_protection_backup_vault_customer_managed_keys, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
