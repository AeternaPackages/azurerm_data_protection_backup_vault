# --- azurerm_data_protection_backup_vault ---
output "data_protection_backup_vaults_cross_region_restore_enabled" {
  description = "Map of cross_region_restore_enabled values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_cross_region_restore_enabled
}

output "data_protection_backup_vaults_datastore_type" {
  description = "Map of datastore_type values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_datastore_type
}

output "data_protection_backup_vaults_identity" {
  description = "Map of identity values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_identity
}

output "data_protection_backup_vaults_immutability" {
  description = "Map of immutability values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_immutability
}

output "data_protection_backup_vaults_location" {
  description = "Map of location values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_location
}

output "data_protection_backup_vaults_name" {
  description = "Map of name values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_name
}

output "data_protection_backup_vaults_redundancy" {
  description = "Map of redundancy values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_redundancy
}

output "data_protection_backup_vaults_resource_group_name" {
  description = "Map of resource_group_name values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_resource_group_name
}

output "data_protection_backup_vaults_retention_duration_in_days" {
  description = "Map of retention_duration_in_days values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_retention_duration_in_days
}

output "data_protection_backup_vaults_soft_delete" {
  description = "Map of soft_delete values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_soft_delete
}

output "data_protection_backup_vaults_tags" {
  description = "Map of tags values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults_tags
}

# --- azurerm_data_protection_backup_instance_data_lake_storage ---
output "data_protection_backup_instance_data_lake_storages_backup_policy_data_lake_storage_id" {
  description = "Map of backup_policy_data_lake_storage_id values across all data_protection_backup_instance_data_lake_storages, keyed the same as var.data_protection_backup_instance_data_lake_storages"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages_backup_policy_data_lake_storage_id
}

output "data_protection_backup_instance_data_lake_storages_data_protection_backup_vault_id" {
  description = "Map of data_protection_backup_vault_id values across all data_protection_backup_instance_data_lake_storages, keyed the same as var.data_protection_backup_instance_data_lake_storages"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages_data_protection_backup_vault_id
}

output "data_protection_backup_instance_data_lake_storages_location" {
  description = "Map of location values across all data_protection_backup_instance_data_lake_storages, keyed the same as var.data_protection_backup_instance_data_lake_storages"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages_location
}

output "data_protection_backup_instance_data_lake_storages_name" {
  description = "Map of name values across all data_protection_backup_instance_data_lake_storages, keyed the same as var.data_protection_backup_instance_data_lake_storages"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages_name
}

output "data_protection_backup_instance_data_lake_storages_protection_state" {
  description = "Map of protection_state values across all data_protection_backup_instance_data_lake_storages, keyed the same as var.data_protection_backup_instance_data_lake_storages"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages_protection_state
}

output "data_protection_backup_instance_data_lake_storages_storage_account_id" {
  description = "Map of storage_account_id values across all data_protection_backup_instance_data_lake_storages, keyed the same as var.data_protection_backup_instance_data_lake_storages"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages_storage_account_id
}

output "data_protection_backup_instance_data_lake_storages_storage_container_names" {
  description = "Map of storage_container_names values across all data_protection_backup_instance_data_lake_storages, keyed the same as var.data_protection_backup_instance_data_lake_storages"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages_storage_container_names
}

# --- azurerm_data_protection_backup_policy_data_lake_storage ---
output "data_protection_backup_policy_data_lake_storages_backup_schedule" {
  description = "Map of backup_schedule values across all data_protection_backup_policy_data_lake_storages, keyed the same as var.data_protection_backup_policy_data_lake_storages"
  value       = module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages_backup_schedule
}

output "data_protection_backup_policy_data_lake_storages_data_protection_backup_vault_id" {
  description = "Map of data_protection_backup_vault_id values across all data_protection_backup_policy_data_lake_storages, keyed the same as var.data_protection_backup_policy_data_lake_storages"
  value       = module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages_data_protection_backup_vault_id
}

output "data_protection_backup_policy_data_lake_storages_default_retention_duration" {
  description = "Map of default_retention_duration values across all data_protection_backup_policy_data_lake_storages, keyed the same as var.data_protection_backup_policy_data_lake_storages"
  value       = module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages_default_retention_duration
}

output "data_protection_backup_policy_data_lake_storages_name" {
  description = "Map of name values across all data_protection_backup_policy_data_lake_storages, keyed the same as var.data_protection_backup_policy_data_lake_storages"
  value       = module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages_name
}

output "data_protection_backup_policy_data_lake_storages_retention_rule" {
  description = "Map of retention_rule values across all data_protection_backup_policy_data_lake_storages, keyed the same as var.data_protection_backup_policy_data_lake_storages"
  value       = module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages_retention_rule
}

output "data_protection_backup_policy_data_lake_storages_time_zone" {
  description = "Map of time_zone values across all data_protection_backup_policy_data_lake_storages, keyed the same as var.data_protection_backup_policy_data_lake_storages"
  value       = module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages_time_zone
}

# --- azurerm_data_protection_backup_vault_customer_managed_key ---
output "data_protection_backup_vault_customer_managed_keys_data_protection_backup_vault_id" {
  description = "Map of data_protection_backup_vault_id values across all data_protection_backup_vault_customer_managed_keys, keyed the same as var.data_protection_backup_vault_customer_managed_keys"
  value       = module.data_protection_backup_vault_customer_managed_keys.data_protection_backup_vault_customer_managed_keys_data_protection_backup_vault_id
}

output "data_protection_backup_vault_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all data_protection_backup_vault_customer_managed_keys, keyed the same as var.data_protection_backup_vault_customer_managed_keys"
  value       = module.data_protection_backup_vault_customer_managed_keys.data_protection_backup_vault_customer_managed_keys_key_vault_key_id
}


