variable "datascience_models" {
  description = <<EOT
Map of datascience_models, attributes below
Required:
    - artifact_content_length
    - compartment_id
    - model_artifact
    - project_id
Optional:
    - artifact_content_disposition
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - input_schema
    - model_version_set_id
    - model_version_set_name
    - output_schema
    - state
    - version_label
    - backup_setting (block):
        - backup_region (required)
        - customer_notification_type (optional)
        - is_backup_enabled (required)
    - custom_metadata_list (block):
        - category (optional)
        - description (optional)
        - has_artifact (optional)
        - key (optional)
        - keywords (optional)
        - value (optional)
    - defined_metadata_list (block):
        - category (optional)
        - description (optional)
        - has_artifact (optional)
        - key (optional)
        - keywords (optional)
        - value (optional)
    - retention_setting (block):
        - archive_after_days (required)
        - customer_notification_type (optional)
        - delete_after_days (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    artifact_content_length      = string
    compartment_id               = string
    model_artifact               = string
    project_id                   = string
    artifact_content_disposition = optional(string)
    defined_tags                 = optional(map(string))
    description                  = optional(string)
    display_name                 = optional(string)
    freeform_tags                = optional(map(string))
    input_schema                 = optional(string)
    model_version_set_id         = optional(string)
    model_version_set_name       = optional(string)
    output_schema                = optional(string)
    state                        = optional(string)
    version_label                = optional(string)
    backup_setting = optional(object({
      backup_region              = string
      customer_notification_type = optional(string)
      is_backup_enabled          = bool
    }))
    custom_metadata_list = optional(list(object({
      category     = optional(string)
      description  = optional(string)
      has_artifact = optional(bool)
      key          = optional(string)
      keywords     = optional(list(string))
      value        = optional(string)
    })))
    defined_metadata_list = optional(list(object({
      category     = optional(string)
      description  = optional(string)
      has_artifact = optional(bool)
      key          = optional(string)
      keywords     = optional(list(string))
      value        = optional(string)
    })))
    retention_setting = optional(object({
      archive_after_days         = number
      customer_notification_type = optional(string)
      delete_after_days          = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datascience_models : (
        v.state == null || (contains([for v in ["ACTIVE", "INACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"ACTIVE\", \"INACTIVE\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

