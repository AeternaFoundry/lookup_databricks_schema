data "databricks_schema" "schema_lookup" {
  for_each = var.schema_lookup

  name = each.value.name

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "schema_info" {
    for_each = each.value.schema_info != null ? [each.value.schema_info] : []
    content {
      browse_only                = schema_info.value.browse_only
      catalog_name               = schema_info.value.catalog_name
      catalog_type               = schema_info.value.catalog_type
      comment                    = schema_info.value.comment
      created_at                 = schema_info.value.created_at
      created_by                 = schema_info.value.created_by
      custom_max_retention_hours = schema_info.value.custom_max_retention_hours
      dynamic "effective_predictive_optimization_flag" {
        for_each = schema_info.value.effective_predictive_optimization_flag != null ? [schema_info.value.effective_predictive_optimization_flag] : []
        content {
          inherited_from_name = effective_predictive_optimization_flag.value.inherited_from_name
          inherited_from_type = effective_predictive_optimization_flag.value.inherited_from_type
          value               = effective_predictive_optimization_flag.value.value
        }
      }
      enable_predictive_optimization = schema_info.value.enable_predictive_optimization
      full_name                      = schema_info.value.full_name
      metastore_id                   = schema_info.value.metastore_id
      name                           = schema_info.value.name
      owner                          = schema_info.value.owner
      properties                     = schema_info.value.properties
      schema_id                      = schema_info.value.schema_id
      storage_location               = schema_info.value.storage_location
      storage_root                   = schema_info.value.storage_root
      updated_at                     = schema_info.value.updated_at
      updated_by                     = schema_info.value.updated_by
    }
  }
}

