output "biglake_databases_id" {
  description = "Map of id values across all biglake_databases, keyed the same as var.biglake_databases except keys with no id are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "biglake_databases_catalog" {
  description = "Map of catalog values across all biglake_databases, keyed the same as var.biglake_databases except keys with no catalog are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.catalog if v.catalog != null && length(v.catalog) > 0 }
}
output "biglake_databases_create_time" {
  description = "Map of create_time values across all biglake_databases, keyed the same as var.biglake_databases except keys with no create_time are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "biglake_databases_delete_time" {
  description = "Map of delete_time values across all biglake_databases, keyed the same as var.biglake_databases except keys with no delete_time are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "biglake_databases_deletion_policy" {
  description = "Map of deletion_policy values across all biglake_databases, keyed the same as var.biglake_databases except keys with no deletion_policy are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "biglake_databases_expire_time" {
  description = "Map of expire_time values across all biglake_databases, keyed the same as var.biglake_databases except keys with no expire_time are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "biglake_databases_hive_options" {
  description = "Map of hive_options values across all biglake_databases, keyed the same as var.biglake_databases except keys with no hive_options are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => one(v.hive_options) if v.hive_options != null && length(v.hive_options) > 0 }
}
output "biglake_databases_name" {
  description = "Map of name values across all biglake_databases, keyed the same as var.biglake_databases except keys with no name are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "biglake_databases_type" {
  description = "Map of type values across all biglake_databases, keyed the same as var.biglake_databases except keys with no type are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.type if v.type != null && length(v.type) > 0 }
}
output "biglake_databases_update_time" {
  description = "Map of update_time values across all biglake_databases, keyed the same as var.biglake_databases except keys with no update_time are omitted"
  value       = { for k, v in google_biglake_database.biglake_databases : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

