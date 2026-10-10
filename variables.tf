variable "glue_catalog_table_optimizers" {
  description = <<EOT
Map of glue_catalog_table_optimizers, attributes below
Required:
    - catalog_id
    - database_name
    - table_name
    - type
Optional:
    - region
    - configuration (block):
        - compaction_configuration (optional, block):
            - iceberg_configuration (optional, block):
                - delete_file_threshold (optional)
                - min_input_files (optional)
                - strategy (optional)
        - enabled (required)
        - orphan_file_deletion_configuration (optional, block):
            - iceberg_configuration (optional, block):
                - location (optional)
                - orphan_file_retention_period_in_days (optional)
                - run_rate_in_hours (optional)
        - retention_configuration (optional, block):
            - iceberg_configuration (optional, block):
                - clean_expired_files (optional)
                - number_of_snapshots_to_retain (optional)
                - run_rate_in_hours (optional)
                - snapshot_retention_period_in_days (optional)
        - role_arn (required)
EOT

  type = map(object({
    catalog_id    = string
    database_name = string
    table_name    = string
    type          = string
    region        = optional(string)
    configuration = optional(list(object({
      compaction_configuration = optional(list(object({
        iceberg_configuration = optional(list(object({
          delete_file_threshold = optional(number)
          min_input_files       = optional(number)
          strategy              = optional(string)
        })))
      })))
      enabled = bool
      orphan_file_deletion_configuration = optional(list(object({
        iceberg_configuration = optional(list(object({
          location                             = optional(string)
          orphan_file_retention_period_in_days = optional(number)
          run_rate_in_hours                    = optional(number)
        })))
      })))
      retention_configuration = optional(list(object({
        iceberg_configuration = optional(list(object({
          clean_expired_files               = optional(bool)
          number_of_snapshots_to_retain     = optional(number)
          run_rate_in_hours                 = optional(number)
          snapshot_retention_period_in_days = optional(number)
        })))
      })))
      role_arn = string
    })))
  }))
}

