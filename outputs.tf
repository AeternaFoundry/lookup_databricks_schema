output "schema_lookup_id" {
  description = "Map of id values across all schema_lookup, keyed the same as var.schema_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_schema.schema_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schema_lookup_name" {
  description = "Map of name values across all schema_lookup, keyed the same as var.schema_lookup except keys with no name are omitted"
  value       = { for k, v in data.databricks_schema.schema_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "schema_lookup_provider_config" {
  description = "Map of provider_config values across all schema_lookup, keyed the same as var.schema_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_schema.schema_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "schema_lookup_schema_info" {
  description = "Map of schema_info values across all schema_lookup, keyed the same as var.schema_lookup except keys with no schema_info are omitted"
  value       = { for k, v in data.databricks_schema.schema_lookup : k => one(v.schema_info) if v.schema_info != null && length(v.schema_info) > 0 }
}

