locals {
  data_protection_backup_vaults = { for k1, v1 in var.data_protection_backup_vaults : k1 => { cross_region_restore_enabled = v1.cross_region_restore_enabled, datastore_type = v1.datastore_type, identity = v1.identity, immutability = v1.immutability, location = v1.location, name = v1.name, redundancy = v1.redundancy, resource_group_name = v1.resource_group_name, retention_duration_in_days = v1.retention_duration_in_days, soft_delete = v1.soft_delete, tags = v1.tags } }

  data_protection_backup_instance_data_lake_storages = merge([
    for k1, v1 in var.data_protection_backup_vaults : {
      for k2, v2 in coalesce(v1.data_protection_backup_instance_data_lake_storages, {}) :
      "${k1}/${k2}" => merge(v2, {
        data_protection_backup_vault_id = module.data_protection_backup_vaults.data_protection_backup_vaults_id["${k1}"]
      })
    }
  ]...)

  data_protection_backup_policy_data_lake_storages = merge([
    for k1, v1 in var.data_protection_backup_vaults : {
      for k2, v2 in coalesce(v1.data_protection_backup_policy_data_lake_storages, {}) :
      "${k1}/${k2}" => merge(v2, {
        data_protection_backup_vault_id = module.data_protection_backup_vaults.data_protection_backup_vaults_id["${k1}"]
      })
    }
  ]...)

  data_protection_backup_vault_customer_managed_keys = merge([
    for k1, v1 in var.data_protection_backup_vaults : {
      for k2, v2 in coalesce(v1.data_protection_backup_vault_customer_managed_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        data_protection_backup_vault_id = module.data_protection_backup_vaults.data_protection_backup_vaults_id["${k1}"]
      })
    }
  ]...)
}

module "data_protection_backup_vaults" {
  source                        = "git::https://github.com/AeternaModules/azurerm_data_protection_backup_vault.git?ref=v4.80.0"
  data_protection_backup_vaults = local.data_protection_backup_vaults
}

module "data_protection_backup_instance_data_lake_storages" {
  source                                             = "git::https://github.com/AeternaModules/azurerm_data_protection_backup_instance_data_lake_storage.git?ref=v4.80.0"
  data_protection_backup_instance_data_lake_storages = local.data_protection_backup_instance_data_lake_storages
  depends_on                                         = [module.data_protection_backup_vaults]
}

module "data_protection_backup_policy_data_lake_storages" {
  source                                           = "git::https://github.com/AeternaModules/azurerm_data_protection_backup_policy_data_lake_storage.git?ref=v4.80.0"
  data_protection_backup_policy_data_lake_storages = local.data_protection_backup_policy_data_lake_storages
  depends_on                                       = [module.data_protection_backup_vaults]
}

module "data_protection_backup_vault_customer_managed_keys" {
  source                                             = "git::https://github.com/AeternaModules/azurerm_data_protection_backup_vault_customer_managed_key.git?ref=v4.80.0"
  data_protection_backup_vault_customer_managed_keys = local.data_protection_backup_vault_customer_managed_keys
  depends_on                                         = [module.data_protection_backup_vaults]
}

