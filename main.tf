resource "oci_datascience_model" "datascience_models" {
  for_each = var.datascience_models

  artifact_content_length      = each.value.artifact_content_length
  compartment_id               = each.value.compartment_id
  model_artifact               = each.value.model_artifact
  project_id                   = each.value.project_id
  artifact_content_disposition = each.value.artifact_content_disposition
  defined_tags                 = each.value.defined_tags
  description                  = each.value.description
  display_name                 = each.value.display_name
  freeform_tags                = each.value.freeform_tags
  input_schema                 = each.value.input_schema
  model_version_set_id         = each.value.model_version_set_id
  model_version_set_name       = each.value.model_version_set_name
  output_schema                = each.value.output_schema
  state                        = each.value.state
  version_label                = each.value.version_label

  dynamic "backup_setting" {
    for_each = each.value.backup_setting != null ? [each.value.backup_setting] : []
    content {
      backup_region              = backup_setting.value.backup_region
      customer_notification_type = backup_setting.value.customer_notification_type
      is_backup_enabled          = backup_setting.value.is_backup_enabled
    }
  }

  dynamic "custom_metadata_list" {
    for_each = each.value.custom_metadata_list != null ? each.value.custom_metadata_list : []
    content {
      category     = custom_metadata_list.value.category
      description  = custom_metadata_list.value.description
      has_artifact = custom_metadata_list.value.has_artifact
      key          = custom_metadata_list.value.key
      keywords     = custom_metadata_list.value.keywords
      value        = custom_metadata_list.value.value
    }
  }

  dynamic "defined_metadata_list" {
    for_each = each.value.defined_metadata_list != null ? each.value.defined_metadata_list : []
    content {
      category     = defined_metadata_list.value.category
      description  = defined_metadata_list.value.description
      has_artifact = defined_metadata_list.value.has_artifact
      key          = defined_metadata_list.value.key
      keywords     = defined_metadata_list.value.keywords
      value        = defined_metadata_list.value.value
    }
  }

  dynamic "retention_setting" {
    for_each = each.value.retention_setting != null ? [each.value.retention_setting] : []
    content {
      archive_after_days         = retention_setting.value.archive_after_days
      customer_notification_type = retention_setting.value.customer_notification_type
      delete_after_days          = retention_setting.value.delete_after_days
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

