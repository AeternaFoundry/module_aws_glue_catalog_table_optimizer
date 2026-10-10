output "glue_catalog_table_optimizers_catalog_id" {
  description = "Map of catalog_id values across all glue_catalog_table_optimizers, keyed the same as var.glue_catalog_table_optimizers"
  value       = { for k, v in aws_glue_catalog_table_optimizer.glue_catalog_table_optimizers : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "glue_catalog_table_optimizers_configuration" {
  description = "Map of configuration values across all glue_catalog_table_optimizers, keyed the same as var.glue_catalog_table_optimizers"
  value       = { for k, v in aws_glue_catalog_table_optimizer.glue_catalog_table_optimizers : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "glue_catalog_table_optimizers_database_name" {
  description = "Map of database_name values across all glue_catalog_table_optimizers, keyed the same as var.glue_catalog_table_optimizers"
  value       = { for k, v in aws_glue_catalog_table_optimizer.glue_catalog_table_optimizers : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "glue_catalog_table_optimizers_region" {
  description = "Map of region values across all glue_catalog_table_optimizers, keyed the same as var.glue_catalog_table_optimizers"
  value       = { for k, v in aws_glue_catalog_table_optimizer.glue_catalog_table_optimizers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glue_catalog_table_optimizers_table_name" {
  description = "Map of table_name values across all glue_catalog_table_optimizers, keyed the same as var.glue_catalog_table_optimizers"
  value       = { for k, v in aws_glue_catalog_table_optimizer.glue_catalog_table_optimizers : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}
output "glue_catalog_table_optimizers_type" {
  description = "Map of type values across all glue_catalog_table_optimizers, keyed the same as var.glue_catalog_table_optimizers"
  value       = { for k, v in aws_glue_catalog_table_optimizer.glue_catalog_table_optimizers : k => v.type if v.type != null && length(v.type) > 0 }
}

