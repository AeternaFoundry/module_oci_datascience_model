output "datascience_models_id" {
  description = "Map of id values across all datascience_models, keyed the same as var.datascience_models except keys with no id are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_models_artifact_content_disposition" {
  description = "Map of artifact_content_disposition values across all datascience_models, keyed the same as var.datascience_models except keys with no artifact_content_disposition are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.artifact_content_disposition if v.artifact_content_disposition != null && length(v.artifact_content_disposition) > 0 }
}
output "datascience_models_artifact_content_length" {
  description = "Map of artifact_content_length values across all datascience_models, keyed the same as var.datascience_models except keys with no artifact_content_length are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.artifact_content_length if v.artifact_content_length != null && length(v.artifact_content_length) > 0 }
}
output "datascience_models_artifact_content_md5" {
  description = "Map of artifact_content_md5 values across all datascience_models, keyed the same as var.datascience_models except keys with no artifact_content_md5 are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.artifact_content_md5 if v.artifact_content_md5 != null && length(v.artifact_content_md5) > 0 }
}
output "datascience_models_artifact_last_modified" {
  description = "Map of artifact_last_modified values across all datascience_models, keyed the same as var.datascience_models except keys with no artifact_last_modified are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.artifact_last_modified if v.artifact_last_modified != null && length(v.artifact_last_modified) > 0 }
}
output "datascience_models_backup_operation_details" {
  description = "Map of backup_operation_details values across all datascience_models, keyed the same as var.datascience_models except keys with no backup_operation_details are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.backup_operation_details if v.backup_operation_details != null && length(v.backup_operation_details) > 0 }
}
output "datascience_models_backup_setting" {
  description = "Map of backup_setting values across all datascience_models, keyed the same as var.datascience_models except keys with no backup_setting are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => one(v.backup_setting) if v.backup_setting != null && length(v.backup_setting) > 0 }
}
output "datascience_models_category" {
  description = "Map of category values across all datascience_models, keyed the same as var.datascience_models except keys with no category are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.category if v.category != null && length(v.category) > 0 }
}
output "datascience_models_compartment_id" {
  description = "Map of compartment_id values across all datascience_models, keyed the same as var.datascience_models except keys with no compartment_id are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_models_created_by" {
  description = "Map of created_by values across all datascience_models, keyed the same as var.datascience_models except keys with no created_by are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "datascience_models_custom_metadata_list" {
  description = "Map of custom_metadata_list values across all datascience_models, keyed the same as var.datascience_models except keys with no custom_metadata_list are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.custom_metadata_list if v.custom_metadata_list != null && length(v.custom_metadata_list) > 0 }
}
output "datascience_models_defined_metadata_list" {
  description = "Map of defined_metadata_list values across all datascience_models, keyed the same as var.datascience_models except keys with no defined_metadata_list are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.defined_metadata_list if v.defined_metadata_list != null && length(v.defined_metadata_list) > 0 }
}
output "datascience_models_defined_tags" {
  description = "Map of defined_tags values across all datascience_models, keyed the same as var.datascience_models except keys with no defined_tags are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "datascience_models_description" {
  description = "Map of description values across all datascience_models, keyed the same as var.datascience_models except keys with no description are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.description if v.description != null && length(v.description) > 0 }
}
output "datascience_models_display_name" {
  description = "Map of display_name values across all datascience_models, keyed the same as var.datascience_models except keys with no display_name are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datascience_models_empty_model" {
  description = "Map of empty_model values across all datascience_models, keyed the same as var.datascience_models except keys with no empty_model are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.empty_model if v.empty_model != null }
}
output "datascience_models_freeform_tags" {
  description = "Map of freeform_tags values across all datascience_models, keyed the same as var.datascience_models except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "datascience_models_input_schema" {
  description = "Map of input_schema values across all datascience_models, keyed the same as var.datascience_models except keys with no input_schema are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.input_schema if v.input_schema != null && length(v.input_schema) > 0 }
}
output "datascience_models_is_model_by_reference" {
  description = "Map of is_model_by_reference values across all datascience_models, keyed the same as var.datascience_models except keys with no is_model_by_reference are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.is_model_by_reference if v.is_model_by_reference != null }
}
output "datascience_models_lifecycle_details" {
  description = "Map of lifecycle_details values across all datascience_models, keyed the same as var.datascience_models except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "datascience_models_model_artifact" {
  description = "Map of model_artifact values across all datascience_models, keyed the same as var.datascience_models except keys with no model_artifact are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.model_artifact if v.model_artifact != null && length(v.model_artifact) > 0 }
}
output "datascience_models_model_version_set_id" {
  description = "Map of model_version_set_id values across all datascience_models, keyed the same as var.datascience_models except keys with no model_version_set_id are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.model_version_set_id if v.model_version_set_id != null && length(v.model_version_set_id) > 0 }
}
output "datascience_models_model_version_set_name" {
  description = "Map of model_version_set_name values across all datascience_models, keyed the same as var.datascience_models except keys with no model_version_set_name are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.model_version_set_name if v.model_version_set_name != null && length(v.model_version_set_name) > 0 }
}
output "datascience_models_output_schema" {
  description = "Map of output_schema values across all datascience_models, keyed the same as var.datascience_models except keys with no output_schema are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.output_schema if v.output_schema != null && length(v.output_schema) > 0 }
}
output "datascience_models_project_id" {
  description = "Map of project_id values across all datascience_models, keyed the same as var.datascience_models except keys with no project_id are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "datascience_models_retention_operation_details" {
  description = "Map of retention_operation_details values across all datascience_models, keyed the same as var.datascience_models except keys with no retention_operation_details are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.retention_operation_details if v.retention_operation_details != null && length(v.retention_operation_details) > 0 }
}
output "datascience_models_retention_setting" {
  description = "Map of retention_setting values across all datascience_models, keyed the same as var.datascience_models except keys with no retention_setting are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => one(v.retention_setting) if v.retention_setting != null && length(v.retention_setting) > 0 }
}
output "datascience_models_state" {
  description = "Map of state values across all datascience_models, keyed the same as var.datascience_models except keys with no state are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datascience_models_time_created" {
  description = "Map of time_created values across all datascience_models, keyed the same as var.datascience_models except keys with no time_created are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "datascience_models_version_label" {
  description = "Map of version_label values across all datascience_models, keyed the same as var.datascience_models except keys with no version_label are omitted"
  value       = { for k, v in oci_datascience_model.datascience_models : k => v.version_label if v.version_label != null && length(v.version_label) > 0 }
}

