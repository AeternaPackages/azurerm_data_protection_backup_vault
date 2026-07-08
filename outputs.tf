# --- azurerm_data_protection_backup_vault ---
output "data_protection_backup_vaults" {
  description = "All data_protection_backup_vault resources"
  value       = module.data_protection_backup_vaults.data_protection_backup_vaults
}
output "data_protection_backup_vaults_cross_region_restore_enabled" {
  description = "List of cross_region_restore_enabled values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.cross_region_restore_enabled]
}
output "data_protection_backup_vaults_datastore_type" {
  description = "List of datastore_type values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.datastore_type]
}
output "data_protection_backup_vaults_identity" {
  description = "List of identity values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.identity]
}
output "data_protection_backup_vaults_immutability" {
  description = "List of immutability values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.immutability]
}
output "data_protection_backup_vaults_location" {
  description = "List of location values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.location]
}
output "data_protection_backup_vaults_name" {
  description = "List of name values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.name]
}
output "data_protection_backup_vaults_redundancy" {
  description = "List of redundancy values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.redundancy]
}
output "data_protection_backup_vaults_resource_group_name" {
  description = "List of resource_group_name values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.resource_group_name]
}
output "data_protection_backup_vaults_retention_duration_in_days" {
  description = "List of retention_duration_in_days values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.retention_duration_in_days]
}
output "data_protection_backup_vaults_soft_delete" {
  description = "List of soft_delete values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.soft_delete]
}
output "data_protection_backup_vaults_tags" {
  description = "List of tags values across all data_protection_backup_vaults"
  value       = [for k, v in module.data_protection_backup_vaults.data_protection_backup_vaults : v.tags]
}


# --- azurerm_data_protection_backup_instance_data_lake_storage ---
output "data_protection_backup_instance_data_lake_storages" {
  description = "All data_protection_backup_instance_data_lake_storage resources"
  value       = module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages
}
output "data_protection_backup_instance_data_lake_storages_backup_policy_data_lake_storage_id" {
  description = "List of backup_policy_data_lake_storage_id values across all data_protection_backup_instance_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages : v.backup_policy_data_lake_storage_id]
}
output "data_protection_backup_instance_data_lake_storages_data_protection_backup_vault_id" {
  description = "List of data_protection_backup_vault_id values across all data_protection_backup_instance_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages : v.data_protection_backup_vault_id]
}
output "data_protection_backup_instance_data_lake_storages_location" {
  description = "List of location values across all data_protection_backup_instance_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages : v.location]
}
output "data_protection_backup_instance_data_lake_storages_name" {
  description = "List of name values across all data_protection_backup_instance_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages : v.name]
}
output "data_protection_backup_instance_data_lake_storages_protection_state" {
  description = "List of protection_state values across all data_protection_backup_instance_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages : v.protection_state]
}
output "data_protection_backup_instance_data_lake_storages_storage_account_id" {
  description = "List of storage_account_id values across all data_protection_backup_instance_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages : v.storage_account_id]
}
output "data_protection_backup_instance_data_lake_storages_storage_container_names" {
  description = "List of storage_container_names values across all data_protection_backup_instance_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_instance_data_lake_storages.data_protection_backup_instance_data_lake_storages : v.storage_container_names]
}


# --- azurerm_data_protection_backup_policy_data_lake_storage ---
output "data_protection_backup_policy_data_lake_storages" {
  description = "All data_protection_backup_policy_data_lake_storage resources"
  value       = module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages
}
output "data_protection_backup_policy_data_lake_storages_backup_schedule" {
  description = "List of backup_schedule values across all data_protection_backup_policy_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages : v.backup_schedule]
}
output "data_protection_backup_policy_data_lake_storages_data_protection_backup_vault_id" {
  description = "List of data_protection_backup_vault_id values across all data_protection_backup_policy_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages : v.data_protection_backup_vault_id]
}
output "data_protection_backup_policy_data_lake_storages_default_retention_duration" {
  description = "List of default_retention_duration values across all data_protection_backup_policy_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages : v.default_retention_duration]
}
output "data_protection_backup_policy_data_lake_storages_name" {
  description = "List of name values across all data_protection_backup_policy_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages : v.name]
}
output "data_protection_backup_policy_data_lake_storages_retention_rule" {
  description = "List of retention_rule values across all data_protection_backup_policy_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages : v.retention_rule]
}
output "data_protection_backup_policy_data_lake_storages_time_zone" {
  description = "List of time_zone values across all data_protection_backup_policy_data_lake_storages"
  value       = [for k, v in module.data_protection_backup_policy_data_lake_storages.data_protection_backup_policy_data_lake_storages : v.time_zone]
}


# --- azurerm_data_protection_backup_vault_customer_managed_key ---
output "data_protection_backup_vault_customer_managed_keys" {
  description = "All data_protection_backup_vault_customer_managed_key resources"
  value       = module.data_protection_backup_vault_customer_managed_keys.data_protection_backup_vault_customer_managed_keys
}
output "data_protection_backup_vault_customer_managed_keys_data_protection_backup_vault_id" {
  description = "List of data_protection_backup_vault_id values across all data_protection_backup_vault_customer_managed_keys"
  value       = [for k, v in module.data_protection_backup_vault_customer_managed_keys.data_protection_backup_vault_customer_managed_keys : v.data_protection_backup_vault_id]
}
output "data_protection_backup_vault_customer_managed_keys_key_vault_key_id" {
  description = "List of key_vault_key_id values across all data_protection_backup_vault_customer_managed_keys"
  value       = [for k, v in module.data_protection_backup_vault_customer_managed_keys.data_protection_backup_vault_customer_managed_keys : v.key_vault_key_id]
}



