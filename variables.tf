variable "schema_lookup" {
  description = <<EOT
Map of schema_lookup, attributes below
Required:
    - name
Optional:
    - provider_config (block):
        - workspace_id (optional)
    - schema_info (block):
        - browse_only (optional)
        - catalog_name (optional)
        - catalog_type (optional)
        - comment (optional)
        - created_at (optional)
        - created_by (optional)
        - custom_max_retention_hours (optional)
        - effective_predictive_optimization_flag (optional, block):
            - inherited_from_name (optional)
            - inherited_from_type (optional)
            - value (required)
        - enable_predictive_optimization (optional)
        - full_name (optional)
        - metastore_id (optional)
        - name (optional)
        - owner (optional)
        - properties (optional)
        - schema_id (optional)
        - storage_location (optional)
        - storage_root (optional)
        - updated_at (optional)
        - updated_by (optional)
EOT

  type = map(object({
    name = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    schema_info = optional(object({
      browse_only                = optional(bool)
      catalog_name               = optional(string)
      catalog_type               = optional(string)
      comment                    = optional(string)
      created_at                 = optional(number)
      created_by                 = optional(string)
      custom_max_retention_hours = optional(number)
      effective_predictive_optimization_flag = optional(object({
        inherited_from_name = optional(string)
        inherited_from_type = optional(string)
        value               = string
      }))
      enable_predictive_optimization = optional(string)
      full_name                      = optional(string)
      metastore_id                   = optional(string)
      name                           = optional(string)
      owner                          = optional(string)
      properties                     = optional(map(string))
      schema_id                      = optional(string)
      storage_location               = optional(string)
      storage_root                   = optional(string)
      updated_at                     = optional(number)
      updated_by                     = optional(string)
    }))
  }))
}

